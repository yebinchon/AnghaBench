
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu {unsigned int number; unsigned int pid; unsigned int tgid; } ;
struct TYPE_2__ {int ctx_sw_seen; } ;


 int ENOENT ;
 unsigned int ESCAPE_CODE ;
 unsigned int SPU_CTX_SWITCH_CODE ;
 int buffer_lock ;
 unsigned long get_exec_dcookie_and_offset (struct spu*,unsigned int*,unsigned long*,unsigned long) ;
 int prepare_cached_spu_info (struct spu*,unsigned long) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* spu_buff ;
 int spu_buff_add (unsigned int,unsigned int) ;

__attribute__((used)) static int process_context_switch(struct spu *spu, unsigned long objectId)
{
 unsigned long flags;
 int retval;
 unsigned int offset = 0;
 unsigned long spu_cookie = 0, app_dcookie;

 retval = prepare_cached_spu_info(spu, objectId);
 if (retval)
  goto out;




 app_dcookie = get_exec_dcookie_and_offset(spu, &offset, &spu_cookie, objectId);
 if (!app_dcookie || !spu_cookie) {
  retval = -ENOENT;
  goto out;
 }


 spin_lock_irqsave(&buffer_lock, flags);
 spu_buff_add(ESCAPE_CODE, spu->number);
 spu_buff_add(SPU_CTX_SWITCH_CODE, spu->number);
 spu_buff_add(spu->number, spu->number);
 spu_buff_add(spu->pid, spu->number);
 spu_buff_add(spu->tgid, spu->number);
 spu_buff_add(app_dcookie, spu->number);
 spu_buff_add(spu_cookie, spu->number);
 spu_buff_add(offset, spu->number);





 spu_buff[spu->number].ctx_sw_seen = 1;

 spin_unlock_irqrestore(&buffer_lock, flags);
 smp_wmb();

out:
 return retval;
}
