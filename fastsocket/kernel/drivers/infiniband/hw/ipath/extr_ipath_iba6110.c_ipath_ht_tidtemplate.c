
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_tidtemplate; int ipath_ibmaxlen; long long ipath_tidinvalid; } ;


 long long INFINIPATH_RT_BUFSIZE_MASK ;
 long long INFINIPATH_RT_BUFSIZE_SHIFT ;
 long long INFINIPATH_RT_VALID ;

__attribute__((used)) static void ipath_ht_tidtemplate(struct ipath_devdata *dd)
{
 dd->ipath_tidtemplate = dd->ipath_ibmaxlen >> 2;
 dd->ipath_tidtemplate <<= INFINIPATH_RT_BUFSIZE_SHIFT;
 dd->ipath_tidtemplate |= INFINIPATH_RT_VALID;





 dd->ipath_tidinvalid = (-1LL & INFINIPATH_RT_BUFSIZE_MASK) <<
  INFINIPATH_RT_BUFSIZE_SHIFT;
}
