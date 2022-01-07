
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thread_info {int dummy; } ;


 int FPEXC ;
 int FPEXC_EN ;
 int fmrx (int ) ;
 int fmxr (int ,int) ;
 unsigned int get_cpu () ;
 int ** last_VFP_context ;
 int put_cpu () ;
 int vfp_save_state (int *,int) ;

void vfp_sync_state(struct thread_info *thread)
{
 unsigned int cpu = get_cpu();
 u32 fpexc = fmrx(FPEXC);





 if (fpexc & FPEXC_EN)
  goto out;

 if (!last_VFP_context[cpu])
  goto out;




 fmxr(FPEXC, fpexc | FPEXC_EN);
 vfp_save_state(last_VFP_context[cpu], fpexc);
 fmxr(FPEXC, fpexc);





 last_VFP_context[cpu] = ((void*)0);

out:
 put_cpu();
}
