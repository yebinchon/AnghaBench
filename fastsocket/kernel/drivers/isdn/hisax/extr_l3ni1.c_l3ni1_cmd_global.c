
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int proc; void* invoke_id; int ll_id; } ;
struct TYPE_8__ {TYPE_1__ ni1; } ;
struct l3_process {int timer; TYPE_2__ prot; } ;
struct PStack {int dummy; } ;
struct TYPE_9__ {int datalen; int proc; void** data; void* hl_id; int timeout; int ll_id; } ;
struct TYPE_10__ {TYPE_3__ ni1_io; } ;
struct TYPE_11__ {int arg; TYPE_4__ parm; } ;
typedef TYPE_5__ isdn_ctrl ;


 int CC_TNI1_IO ;
 int DL_DATA ;
 int L3AddTimer (int *,int ,int) ;
 int L3DelTimer (int *) ;
 int MT_FACILITY ;
 int MsgHead (void**,int,int ) ;


 int REQUEST ;
 int free_invoke_id (struct PStack*,void*) ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_debug (struct PStack*,char*,...) ;
 int l3_msg (struct PStack*,int,struct sk_buff*) ;
 struct l3_process* l3ni1_search_dummy_proc (struct PStack*,void*) ;
 int memcpy (void**,void**,int) ;
 void* new_invoke_id (struct PStack*) ;
 struct l3_process* ni1_new_l3_process (struct PStack*,int) ;
 int ni1_release_l3_process (struct l3_process*) ;
 void** skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int l3ni1_cmd_global(struct PStack *st, isdn_ctrl *ic)
{ u_char id;
  u_char temp[265];
  u_char *p = temp;
  int i, l, proc_len;
  struct sk_buff *skb;
  struct l3_process *pc = ((void*)0);

  switch (ic->arg)
   { case 129:
       if (ic->parm.ni1_io.datalen < 0) return(-2);

       for (proc_len = 1, i = ic->parm.ni1_io.proc >> 8; i; i++)
         i = i >> 8;
       l = ic->parm.ni1_io.datalen + proc_len + 8;
       if (l > 255)
         return(-2);

       if (!(id = new_invoke_id(st)))
         return(0);

       i = -1;
       MsgHead(p, i, MT_FACILITY);
       *p++ = 0x1C;
       *p++ = l;
       *p++ = 0x91;
       *p++ = 0xA1;
       *p++ = l - 3;
       *p++ = 0x02;
       *p++ = 0x01;
       *p++ = id;
       *p++ = 0x02;
       *p++ = proc_len;

       for (i = proc_len; i; i--)
         *p++ = (ic->parm.ni1_io.proc >> (i-1)) & 0xFF;
       memcpy(p, ic->parm.ni1_io.data, ic->parm.ni1_io.datalen);
       l = (p - temp) + ic->parm.ni1_io.datalen;

       if (ic->parm.ni1_io.timeout > 0)
        if (!(pc = ni1_new_l3_process(st, -1)))
          { free_invoke_id(st, id);
            return(-2);
          }
       pc->prot.ni1.ll_id = ic->parm.ni1_io.ll_id;
       pc->prot.ni1.proc = ic->parm.ni1_io.proc;

       if (!(skb = l3_alloc_skb(l)))
         { free_invoke_id(st, id);
           if (pc) ni1_release_l3_process(pc);
           return(-2);
         }
       memcpy(skb_put(skb, l), temp, l);

       if (pc)
        { pc->prot.ni1.invoke_id = id;
          L3AddTimer(&pc->timer, ic->parm.ni1_io.timeout, CC_TNI1_IO | REQUEST);
        }

       l3_msg(st, DL_DATA | REQUEST, skb);
       ic->parm.ni1_io.hl_id = id;
       return(0);

     case 128:
       if ((pc = l3ni1_search_dummy_proc(st, ic->parm.ni1_io.hl_id)))
 { L3DelTimer(&pc->timer);
          ni1_release_l3_process(pc);
          return(0);
        }
       else
 { l3_debug(st, "l3ni1_cmd_global abort unknown id");
          return(-2);
        }
       break;

     default:
       l3_debug(st, "l3ni1_cmd_global unknown cmd 0x%lx", ic->arg);
       return(-1);
   }
  return(-1);
}
