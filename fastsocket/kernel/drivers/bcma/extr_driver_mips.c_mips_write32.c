
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_drv_mips {int core; } ;


 int bcma_write32 (int ,int ,int ) ;

__attribute__((used)) static inline void mips_write32(struct bcma_drv_mips *mcore,
    u16 offset,
    u32 value)
{
 bcma_write32(mcore->core, offset, value);
}
