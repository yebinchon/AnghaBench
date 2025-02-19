
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_3__ {int PhysDiskDevHandle; } ;
typedef TYPE_1__ Mpi2EventIrConfigElement_t ;


 int _scsih_device_remove_by_handle (struct MPT2SAS_ADAPTER*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_sas_pd_delete(struct MPT2SAS_ADAPTER *ioc,
    Mpi2EventIrConfigElement_t *element)
{
 u16 handle = le16_to_cpu(element->PhysDiskDevHandle);

 _scsih_device_remove_by_handle(ioc, handle);
}
