
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int nvt_cr_read (struct nvt_dev*,int) ;
 int nvt_cr_write (struct nvt_dev*,int,int) ;

__attribute__((used)) static inline void nvt_set_reg_bit(struct nvt_dev *nvt, u8 val, u8 reg)
{
 u8 tmp = nvt_cr_read(nvt, reg) | val;
 nvt_cr_write(nvt, tmp, reg);
}
