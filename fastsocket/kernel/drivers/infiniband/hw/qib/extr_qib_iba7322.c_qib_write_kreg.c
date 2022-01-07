
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct qib_devdata {int flags; int * kregbase; } ;


 int QIB_PRESENT ;
 int writeq (int ,int *) ;

__attribute__((used)) static inline void qib_write_kreg(const struct qib_devdata *dd,
      const u32 regno, u64 value)
{
 if (dd->kregbase && (dd->flags & QIB_PRESENT))
  writeq(value, &dd->kregbase[regno]);
}
