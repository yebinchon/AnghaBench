
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int current ;
 int flush_altivec_to_thread (int ) ;
 int flush_fp_to_thread (int ) ;
 int flush_spe_to_thread (int ) ;
 int flush_vsx_to_thread (int ) ;

void prepare_to_copy(struct task_struct *tsk)
{
 flush_fp_to_thread(current);
 flush_altivec_to_thread(current);
 flush_vsx_to_thread(current);
 flush_spe_to_thread(current);
}
