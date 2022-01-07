
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_devdata {int dummy; } ;


 int kr_scratch ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;

__attribute__((used)) static void writescratch(struct qib_devdata *dd, u32 val)
{
 qib_write_kreg(dd, kr_scratch, val);
}
