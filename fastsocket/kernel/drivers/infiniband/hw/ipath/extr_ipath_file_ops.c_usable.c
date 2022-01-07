
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_flags; scalar_t__ ipath_lid; scalar_t__ ipath_kregbase; } ;


 int IPATH_DISABLED ;
 int IPATH_LINKDOWN ;
 int IPATH_LINKUNK ;
 int IPATH_PRESENT ;

__attribute__((used)) static inline int usable(struct ipath_devdata *dd)
{
 return dd &&
  (dd->ipath_flags & IPATH_PRESENT) &&
  dd->ipath_kregbase &&
  dd->ipath_lid &&
  !(dd->ipath_flags & (IPATH_LINKDOWN | IPATH_DISABLED
         | IPATH_LINKUNK));
}
