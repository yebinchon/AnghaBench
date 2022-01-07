
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;


 int SAL_CALL_NOLOCK (struct ia64_sal_retval,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ SN_SAL_IOIF_GET_PCIDEV_INFO ;

__attribute__((used)) static inline u64
sal_get_pcidev_info(u64 segment, u64 bus_number, u64 devfn, u64 pci_dev,
      u64 sn_irq_info)
{
 struct ia64_sal_retval ret_stuff;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 SAL_CALL_NOLOCK(ret_stuff,
   (u64) SN_SAL_IOIF_GET_PCIDEV_INFO,
   (u64) segment, (u64) bus_number, (u64) devfn,
   (u64) pci_dev,
   sn_irq_info, 0, 0);
 return ret_stuff.v0;
}
