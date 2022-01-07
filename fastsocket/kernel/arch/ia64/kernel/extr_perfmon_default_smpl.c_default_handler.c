
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct task_struct {int pid; } ;
struct pt_regs {int cr_iip; int cr_ipsr; } ;
struct TYPE_8__ {int notify_user; int block_task; int mask_monitoring; int reset_ovfl_pmds; } ;
struct TYPE_9__ {TYPE_1__ bits; } ;
struct TYPE_10__ {unsigned char ovfl_pmd; unsigned char ovfl_notify; unsigned long* smpl_pmds_values; TYPE_2__ ovfl_ctrl; int active_set; int pmd_last_reset; int * smpl_pmds; } ;
typedef TYPE_3__ pfm_ovfl_arg_t ;
struct TYPE_11__ {int hdr_cur_offs; int hdr_buf_size; int hdr_overflows; int hdr_count; } ;
typedef TYPE_4__ pfm_default_smpl_hdr_t ;
struct TYPE_12__ {unsigned char ovfl_pmd; int ip; unsigned long tstamp; int tgid; int set; int cpu; int last_reset_val; int pid; } ;
typedef TYPE_5__ pfm_default_smpl_entry_t ;
struct TYPE_13__ {int tgid; int pid; } ;


 int DPRINT (char*) ;
 int DPRINT_ovfl (char*) ;
 int EINVAL ;
 int PFM_DEFAULT_MAX_ENTRY_SIZE ;
 TYPE_7__* current ;
 unsigned int hweight64 (int ) ;
 int prefetch (unsigned long*) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
default_handler(struct task_struct *task, void *buf, pfm_ovfl_arg_t *arg, struct pt_regs *regs, unsigned long stamp)
{
 pfm_default_smpl_hdr_t *hdr;
 pfm_default_smpl_entry_t *ent;
 void *cur, *last;
 unsigned long *e, entry_size;
 unsigned int npmds, i;
 unsigned char ovfl_pmd;
 unsigned char ovfl_notify;

 if (unlikely(buf == ((void*)0) || arg == ((void*)0)|| regs == ((void*)0) || task == ((void*)0))) {
  DPRINT(("[%d] invalid arguments buf=%p arg=%p\n", task->pid, buf, arg));
  return -EINVAL;
 }

 hdr = (pfm_default_smpl_hdr_t *)buf;
 cur = buf+hdr->hdr_cur_offs;
 last = buf+hdr->hdr_buf_size;
 ovfl_pmd = arg->ovfl_pmd;
 ovfl_notify = arg->ovfl_notify;




 if ((last - cur) < PFM_DEFAULT_MAX_ENTRY_SIZE) goto full;

 npmds = hweight64(arg->smpl_pmds[0]);

 ent = (pfm_default_smpl_entry_t *)cur;

 prefetch(arg->smpl_pmds_values);

 entry_size = sizeof(*ent) + (npmds << 3);


 e = (unsigned long *)(ent+1);

 hdr->hdr_count++;

 DPRINT_ovfl(("[%d] count=%lu cur=%p last=%p free_bytes=%lu ovfl_pmd=%d ovfl_notify=%d npmds=%u\n",
   task->pid,
   hdr->hdr_count,
   cur, last,
   last-cur,
   ovfl_pmd,
   ovfl_notify, npmds));
 ent->pid = current->pid;
 ent->ovfl_pmd = ovfl_pmd;
 ent->last_reset_val = arg->pmd_last_reset;




 ent->ip = regs->cr_iip | ((regs->cr_ipsr >> 41) & 0x3);

 ent->tstamp = stamp;
 ent->cpu = smp_processor_id();
 ent->set = arg->active_set;
 ent->tgid = current->tgid;




 if (npmds) {
  unsigned long *val = arg->smpl_pmds_values;
  for(i=0; i < npmds; i++) {
   *e++ = *val++;
  }
 }




 hdr->hdr_cur_offs += entry_size;
 cur += entry_size;




 if ((last - cur) < PFM_DEFAULT_MAX_ENTRY_SIZE) goto full;




 arg->ovfl_ctrl.bits.notify_user = 0;
 arg->ovfl_ctrl.bits.block_task = 0;
 arg->ovfl_ctrl.bits.mask_monitoring = 0;
 arg->ovfl_ctrl.bits.reset_ovfl_pmds = 1;

 return 0;
full:
 DPRINT_ovfl(("sampling buffer full free=%lu, count=%lu, ovfl_notify=%d\n", last-cur, hdr->hdr_count, ovfl_notify));





 hdr->hdr_overflows++;




 if (ovfl_notify == 0) {
  arg->ovfl_ctrl.bits.notify_user = 0;
  arg->ovfl_ctrl.bits.block_task = 0;
  arg->ovfl_ctrl.bits.mask_monitoring = 1;
  arg->ovfl_ctrl.bits.reset_ovfl_pmds = 0;
 } else {
  arg->ovfl_ctrl.bits.notify_user = 1;
  arg->ovfl_ctrl.bits.block_task = 1;
  arg->ovfl_ctrl.bits.mask_monitoring = 1;
  arg->ovfl_ctrl.bits.reset_ovfl_pmds = 0;
 }
 return -1;
}
