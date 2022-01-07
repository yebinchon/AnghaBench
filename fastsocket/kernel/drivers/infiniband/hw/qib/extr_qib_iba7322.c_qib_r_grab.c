
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {int dummy; } ;


 int SJA_EN ;
 int kr_r_access ;
 int kr_scratch ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;

__attribute__((used)) static int qib_r_grab(struct qib_devdata *dd)
{
 u64 val;
 val = SJA_EN;
 qib_write_kreg(dd, kr_r_access, val);
 qib_read_kreg32(dd, kr_scratch);
 return 0;
}
