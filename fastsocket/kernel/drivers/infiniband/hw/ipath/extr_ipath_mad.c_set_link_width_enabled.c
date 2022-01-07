
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_devdata {int (* ipath_f_set_ib_cfg ) (struct ipath_devdata*,int ,int ) ;} ;


 int IPATH_IB_CFG_LWID_ENB ;
 int stub1 (struct ipath_devdata*,int ,int ) ;

__attribute__((used)) static void set_link_width_enabled(struct ipath_devdata *dd, u32 w)
{
 (void) dd->ipath_f_set_ib_cfg(dd, IPATH_IB_CFG_LWID_ENB, w);
}
