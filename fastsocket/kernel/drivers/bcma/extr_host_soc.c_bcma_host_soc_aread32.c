
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct bcma_device {scalar_t__ io_wrap; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 bcma_host_soc_aread32(struct bcma_device *core, u16 offset)
{
 return readl(core->io_wrap + offset);
}
