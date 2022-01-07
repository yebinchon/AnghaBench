
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u16 ;
struct qib_devdata {int flags; int * kregbase; } ;


 int QIB_PRESENT ;
 int readq (int *) ;

__attribute__((used)) static inline u64 qib_read_kreg64(const struct qib_devdata *dd,
      const u16 regno)
{
 if (!dd->kregbase || !(dd->flags & QIB_PRESENT))
  return -1;

 return readq(&dd->kregbase[regno]);
}
