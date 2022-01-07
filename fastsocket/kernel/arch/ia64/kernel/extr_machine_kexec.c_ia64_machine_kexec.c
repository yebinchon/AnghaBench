
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct unw_frame_info {scalar_t__ sw; } ;
struct kimage {scalar_t__ type; int start; int head; int control_code_page; } ;
typedef int (* relocate_new_kernel_t ) (int ,int ,int ,int ) ;
struct TYPE_5__ {int fp; } ;
typedef TYPE_2__ ia64_fptr_t ;
typedef scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ ksp; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int GRANULEROUNDDOWN (unsigned long) ;
 scalar_t__ IA64_SPURIOUS_INT_VECTOR ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 int SAL_VECTOR_OS_INIT ;
 int SAL_VECTOR_OS_MCA ;
 int _IA64_REG_CR_CMCV ;
 int _IA64_REG_CR_PMV ;
 int _IA64_REG_CR_TPR ;
 int _IA64_REG_GP ;
 int crash_save_this_cpu () ;
 TYPE_3__* current ;
 void* efi_get_pal_addr () ;
 int ia64_boot_param ;
 int ia64_eoi () ;
 scalar_t__ ia64_get_ivr () ;
 int ia64_getreg (int ) ;
 scalar_t__ ia64_os_init_on_kdump ;
 int ia64_sal_set_vectors (int ,int ,int ,int ,int ,int ,int ) ;
 int ia64_set_itv (int) ;
 int ia64_set_lrr0 (int) ;
 int ia64_set_lrr1 (int) ;
 int ia64_setreg (int ,int) ;
 int ia64_srlz_d () ;
 int ia64_tpa (int ) ;
 int local_irq_disable () ;
 scalar_t__ page_address (int ) ;
 int platform_kernel_launch_event () ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void ia64_machine_kexec(struct unw_frame_info *info, void *arg)
{
 struct kimage *image = arg;
 relocate_new_kernel_t rnk;
 void *pal_addr = efi_get_pal_addr();
 unsigned long code_addr = (unsigned long)page_address(image->control_code_page);
 int ii;
 u64 fp, gp;
 ia64_fptr_t *init_handler = (ia64_fptr_t *)ia64_os_init_on_kdump;

 BUG_ON(!image);
 if (image->type == KEXEC_TYPE_CRASH) {
  crash_save_this_cpu();
  current->thread.ksp = (__u64)info->sw - 16;


  fp = ia64_tpa(init_handler->fp);
  gp = ia64_tpa(ia64_getreg(_IA64_REG_GP));
  ia64_sal_set_vectors(SAL_VECTOR_OS_INIT, fp, gp, 0, fp, gp, 0);
 } else {

  ia64_sal_set_vectors(SAL_VECTOR_OS_INIT, 0, 0, 0, 0, 0, 0);
 }


 ia64_sal_set_vectors(SAL_VECTOR_OS_MCA, 0, 0, 0, 0, 0, 0);


 local_irq_disable();


 ia64_setreg(_IA64_REG_CR_PMV, 1 << 16);
 ia64_setreg(_IA64_REG_CR_CMCV, 1 << 16);


 ia64_set_itv(1 << 16);
 ia64_set_lrr0(1 << 16);
 ia64_set_lrr1(1 << 16);


 for (ii = 0; ii < 16; ii++)
  ia64_eoi();


 ia64_setreg(_IA64_REG_CR_TPR, 0);
 ia64_srlz_d();
 while (ia64_get_ivr() != IA64_SPURIOUS_INT_VECTOR)
  ia64_eoi();
 platform_kernel_launch_event();
 rnk = (relocate_new_kernel_t)&code_addr;
 (*rnk)(image->head, image->start, ia64_boot_param,
       GRANULEROUNDDOWN((unsigned long) pal_addr));
 BUG();
}
