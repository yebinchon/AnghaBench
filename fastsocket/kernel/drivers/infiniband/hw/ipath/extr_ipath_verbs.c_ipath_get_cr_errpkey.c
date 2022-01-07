
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipath_devdata {TYPE_1__* ipath_cregs; } ;
struct TYPE_2__ {int cr_errpkey; } ;


 int ipath_read_creg32 (struct ipath_devdata*,int ) ;

u32 ipath_get_cr_errpkey(struct ipath_devdata *dd)
{
 return ipath_read_creg32(dd, dd->ipath_cregs->cr_errpkey);
}
