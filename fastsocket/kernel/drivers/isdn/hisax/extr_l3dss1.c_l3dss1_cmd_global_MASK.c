#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int proc; void* invoke_id; int /*<<< orphan*/  ll_id; } ;
struct TYPE_8__ {TYPE_1__ dss1; } ;
struct l3_process {int /*<<< orphan*/  timer; TYPE_2__ prot; } ;
struct PStack {int dummy; } ;
struct TYPE_9__ {int datalen; int proc; void** data; void* hl_id; int /*<<< orphan*/  timeout; int /*<<< orphan*/  ll_id; } ;
struct TYPE_10__ {TYPE_3__ dss1_io; } ;
struct TYPE_11__ {int arg; TYPE_4__ parm; } ;
typedef  TYPE_5__ isdn_ctrl ;

/* Variables and functions */
 int CC_TDSS1_IO ; 
 int DL_DATA ; 
#define  DSS1_CMD_INVOKE 129 
#define  DSS1_CMD_INVOKE_ABORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_FACILITY ; 
 int /*<<< orphan*/  FUNC2 (void**,int,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 struct l3_process* FUNC3 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,void*) ; 
 struct sk_buff* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct PStack*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct PStack*,int,struct sk_buff*) ; 
 struct l3_process* FUNC9 (struct PStack*,void*) ; 
 int /*<<< orphan*/  FUNC10 (void**,void**,int) ; 
 void* FUNC11 (struct PStack*) ; 
 void** FUNC12 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC13(struct PStack *st, isdn_ctrl *ic)
{ u_char id;
  u_char temp[265];
  u_char *p = temp;
  int i, l, proc_len; 
  struct sk_buff *skb;
  struct l3_process *pc = NULL;

  switch (ic->arg)
   { case DSS1_CMD_INVOKE:
       if (ic->parm.dss1_io.datalen < 0) return(-2); /* invalid parameter */ 

       for (proc_len = 1, i = ic->parm.dss1_io.proc >> 8; i; i++) 
         i = i >> 8; /* add one byte */    
       l = ic->parm.dss1_io.datalen + proc_len + 8; /* length excluding ie header */
       if (l > 255) 
         return(-2); /* too long */

       if (!(id = FUNC11(st))) 
         return(0); /* first get a invoke id -> return if no available */
       
       i = -1; 
       FUNC2(p, i, MT_FACILITY); /* build message head */
       *p++ = 0x1C; /* Facility IE */
       *p++ = l; /* length of ie */
       *p++ = 0x91; /* remote operations */
       *p++ = 0xA1; /* invoke */
       *p++ = l - 3; /* length of invoke */
       *p++ = 0x02; /* invoke id tag */
       *p++ = 0x01; /* length is 1 */
       *p++ = id; /* invoke id */
       *p++ = 0x02; /* operation */
       *p++ = proc_len; /* length of operation */
       
       for (i = proc_len; i; i--)
         *p++ = (ic->parm.dss1_io.proc >> (i-1)) & 0xFF;
       FUNC10(p, ic->parm.dss1_io.data, ic->parm.dss1_io.datalen); /* copy data */
       l = (p - temp) + ic->parm.dss1_io.datalen; /* total length */         

       if (ic->parm.dss1_io.timeout > 0)
        if (!(pc = FUNC3(st, -1)))
          { FUNC5(st, id);
            return(-2);
          } 
       pc->prot.dss1.ll_id = ic->parm.dss1_io.ll_id; /* remember id */ 
       pc->prot.dss1.proc = ic->parm.dss1_io.proc; /* and procedure */

       if (!(skb = FUNC6(l))) 
         { FUNC5(st, id);
           if (pc) FUNC4(pc);
           return(-2);
         }
       FUNC10(FUNC12(skb, l), temp, l);
       
       if (pc)
        { pc->prot.dss1.invoke_id = id; /* remember id */
          FUNC0(&pc->timer, ic->parm.dss1_io.timeout, CC_TDSS1_IO | REQUEST);
        }
       
       FUNC8(st, DL_DATA | REQUEST, skb);
       ic->parm.dss1_io.hl_id = id; /* return id */
       return(0);

     case DSS1_CMD_INVOKE_ABORT:
       if ((pc = FUNC9(st, ic->parm.dss1_io.hl_id)))
	{ FUNC1(&pc->timer); /* remove timer */
          FUNC4(pc);
          return(0); 
        } 
       else
	{ FUNC7(st, "l3dss1_cmd_global abort unknown id");
          return(-2);
        } 
       break;
    
     default: 
       FUNC7(st, "l3dss1_cmd_global unknown cmd 0x%lx", ic->arg);
       return(-1);  
   } /* switch ic-> arg */
  return(-1);
}