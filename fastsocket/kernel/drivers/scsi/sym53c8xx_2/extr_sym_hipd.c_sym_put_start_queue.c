
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct sym_hcb {scalar_t__ iarb_count; scalar_t__ iarb_max; int squeueput; int istat_sem; void** squeue; int idletask_ba; scalar_t__ dmap_dirty; struct sym_ccb* last_cp; } ;
struct sym_ccb {int cmd; int ccb_ba; int host_xflags; int host_flags; } ;


 int DEBUG_FLAGS ;
 int DEBUG_QUEUE ;
 int HF_HINT_IARB ;
 int HX_DMAP_DIRTY ;
 int KERN_DEBUG ;
 int MAX_QUEUE ;
 int MEMORY_WRITE_BARRIER () ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int SIGP ;
 void* cpu_to_scr (int ) ;
 int nc_istat ;
 int scmd_printk (int ,int ,char*,int) ;

void sym_put_start_queue(struct sym_hcb *np, struct sym_ccb *cp)
{
 u_short qidx;
 qidx = np->squeueput + 2;
 if (qidx >= MAX_QUEUE*2) qidx = 0;

 np->squeue [qidx] = cpu_to_scr(np->idletask_ba);
 MEMORY_WRITE_BARRIER();
 np->squeue [np->squeueput] = cpu_to_scr(cp->ccb_ba);

 np->squeueput = qidx;

 if (DEBUG_FLAGS & DEBUG_QUEUE)
  scmd_printk(KERN_DEBUG, cp->cmd, "queuepos=%d\n",
       np->squeueput);





 MEMORY_WRITE_BARRIER();
 OUTB(np, nc_istat, SIGP|np->istat_sem);
}
