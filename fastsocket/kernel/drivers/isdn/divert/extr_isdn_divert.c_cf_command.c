
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int u_char ;
struct TYPE_6__ {int proc; int timeout; int datalen; char* data; scalar_t__ ll_id; } ;
struct TYPE_7__ {TYPE_1__ dss1_io; } ;
struct TYPE_8__ {int driver; TYPE_2__ parm; int arg; int command; } ;
struct TYPE_9__ {scalar_t__ data; int function; } ;
struct call_struc {char* info; struct call_struc* next; int * prev; TYPE_3__ ics; TYPE_4__ timer; } ;
struct TYPE_10__ {int (* ll_cmd ) (TYPE_3__*) ;int (* drv_to_name ) (int) ;} ;


 int DIVERT_ACTIVATE ;
 int DIVERT_DEACTIVATE ;
 int DIVERT_REPORT ;
 int DSS1_CMD_INVOKE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ISDN_CMD_PROT_IO ;
 int deflect_timer_expire ;
 struct call_struc* divert_head ;
 TYPE_5__ divert_if ;
 int divert_lock ;
 int init_timer (TYPE_4__*) ;
 int kfree (struct call_struc*) ;
 struct call_struc* kmalloc (int,int ) ;
 int next_id ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,int,scalar_t__,char*,int ,char*,int,int,char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (int) ;
 int stub2 (TYPE_3__*) ;

int cf_command(int drvid, int mode,
               u_char proc, char *msn,
               u_char service, char *fwd_nr, ulong *procid)
{ unsigned long flags;
  int retval,msnlen;
  int fwd_len;
  char *p,*ielenp,tmp[60];
  struct call_struc *cs;

  if (strchr(msn,'.')) return(-EINVAL);
  if ((proc & 0x7F) > 2) return(-EINVAL);
  proc &= 3;
  p = tmp;
  *p++ = 0x30;
  ielenp = p++;
  *p++ = 0xa;
  *p++ = 1;
  *p++ = proc & 0x7F;
  *p++ = 0xa;
  *p++ = 1;
  *p++ = service;

  if (mode == 1)
   { if (!*fwd_nr) return(-EINVAL);
     if (strchr(fwd_nr,'.')) return(-EINVAL);
     fwd_len = strlen(fwd_nr);
     *p++ = 0x30;
     *p++ = fwd_len + 2;
     *p++ = 0x80;
     *p++ = fwd_len;
     strcpy(p,fwd_nr);
     p += fwd_len;
   }

  msnlen = strlen(msn);
  *p++ = 0x80;
  if (msnlen > 1)
   { *p++ = msnlen;
     strcpy(p,msn);
     p += msnlen;
   }
  else *p++ = 0;

  *ielenp = p - ielenp - 1;


  if (!(cs = kmalloc(sizeof(struct call_struc), GFP_ATOMIC)))
             return(-ENOMEM);
  init_timer(&cs->timer);
  cs->info[0] = '\0';
  cs->timer.function = deflect_timer_expire;
  cs->timer.data = (ulong) cs;
  cs->ics.driver = drvid;
  cs->ics.command = ISDN_CMD_PROT_IO;
  cs->ics.arg = DSS1_CMD_INVOKE;
  cs->ics.parm.dss1_io.proc = (mode == 1) ? 7: (mode == 2) ? 11:8;
  cs->ics.parm.dss1_io.timeout = 4000;
  cs->ics.parm.dss1_io.datalen = p - tmp;
  cs->ics.parm.dss1_io.data = tmp;

  spin_lock_irqsave(&divert_lock, flags);
  cs->ics.parm.dss1_io.ll_id = next_id++;
  spin_unlock_irqrestore(&divert_lock, flags);
  *procid = cs->ics.parm.dss1_io.ll_id;

  sprintf(cs->info,"%d 0x%lx %s%s 0 %s %02x %d%s%s\n",
   (!mode ) ? DIVERT_DEACTIVATE : (mode == 1) ? DIVERT_ACTIVATE : DIVERT_REPORT,
          cs->ics.parm.dss1_io.ll_id,
          (mode != 2) ? "" : "0 ",
          divert_if.drv_to_name(cs->ics.driver),
          msn,
          service & 0xFF,
          proc,
          (mode != 1) ? "" : " 0 ",
          (mode != 1) ? "" : fwd_nr);

  retval = divert_if.ll_cmd(&cs->ics);

  if (!retval)
   { cs->prev = ((void*)0);
     spin_lock_irqsave(&divert_lock, flags);
     cs->next = divert_head;
     divert_head = cs;
     spin_unlock_irqrestore(&divert_lock, flags);
   }
  else
   kfree(cs);
  return(retval);
}
