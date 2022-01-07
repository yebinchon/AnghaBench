
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int hop_ptr; } ;
struct ib_device {scalar_t__ process_mad; } ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 int IB_SMI_DISCARD ;
 int IB_SMI_HANDLE ;
 scalar_t__ ib_get_smp_direction (struct ib_smp*) ;

__attribute__((used)) static inline enum smi_action smi_check_local_returning_smp(struct ib_smp *smp,
         struct ib_device *device)
{


 return ((device->process_mad &&
  ib_get_smp_direction(smp) &&
  !smp->hop_ptr) ? IB_SMI_HANDLE : IB_SMI_DISCARD);
}
