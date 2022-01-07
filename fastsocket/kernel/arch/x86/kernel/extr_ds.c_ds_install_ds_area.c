
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ds_context {scalar_t__ task; int cpu; scalar_t__ ds; } ;


 int MSR_IA32_DS_AREA ;
 int TIF_DS_AREA_MSR ;
 scalar_t__ current ;
 int get_cpu () ;
 int put_cpu () ;
 int set_tsk_thread_flag (scalar_t__,int ) ;
 int wrmsr_on_cpu (int ,int ,int ,int ) ;
 int wrmsrl (int ,unsigned long) ;

__attribute__((used)) static void ds_install_ds_area(struct ds_context *context)
{
 unsigned long ds;

 ds = (unsigned long)context->ds;
 if (context->task) {
  get_cpu();
  if (context->task == current)
   wrmsrl(MSR_IA32_DS_AREA, ds);
  set_tsk_thread_flag(context->task, TIF_DS_AREA_MSR);
  put_cpu();
 } else
  wrmsr_on_cpu(context->cpu, MSR_IA32_DS_AREA,
        (u32)((u64)ds), (u32)((u64)ds >> 32));
}
