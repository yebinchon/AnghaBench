
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u16 ;
struct qib_devdata {int * kregbase; } ;


 int writeq (int ,int *) ;

__attribute__((used)) static inline void qib_write_kreg(const struct qib_devdata *dd,
      const u16 regno, u64 value)
{
 if (dd->kregbase)
  writeq(value, &dd->kregbase[regno]);
}
