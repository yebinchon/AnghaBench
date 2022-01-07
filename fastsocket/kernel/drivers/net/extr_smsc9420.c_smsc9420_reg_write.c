
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct smsc9420_pdata {scalar_t__ base_addr; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
smsc9420_reg_write(struct smsc9420_pdata *pd, u32 offset, u32 value)
{
 iowrite32(value, pd->base_addr + offset);
}
