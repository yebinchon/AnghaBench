
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int * ipath_kregbase; } ;
typedef size_t ipath_kreg ;


 int writeq (int ,int *) ;

__attribute__((used)) static inline void ipath_write_kreg(const struct ipath_devdata *dd,
        ipath_kreg regno, u64 value)
{
 if (dd->ipath_kregbase)
  writeq(value, &dd->ipath_kregbase[regno]);
}
