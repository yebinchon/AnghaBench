
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nvt_dev {scalar_t__ cir_addr; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nvt_cir_reg_write(struct nvt_dev *nvt, u8 val, u8 offset)
{
 outb(val, nvt->cir_addr + offset);
}
