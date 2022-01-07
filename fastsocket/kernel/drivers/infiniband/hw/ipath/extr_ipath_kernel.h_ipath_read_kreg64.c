
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int ipath_flags; int * ipath_kregbase; } ;
typedef size_t ipath_kreg ;


 int IPATH_PRESENT ;
 int readq (int *) ;

__attribute__((used)) static inline u64 ipath_read_kreg64(const struct ipath_devdata *dd,
        ipath_kreg regno)
{
 if (!dd->ipath_kregbase || !(dd->ipath_flags & IPATH_PRESENT))
  return -1;

 return readq(&dd->ipath_kregbase[regno]);
}
