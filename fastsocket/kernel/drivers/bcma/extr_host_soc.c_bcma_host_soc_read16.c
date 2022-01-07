
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bcma_device {scalar_t__ io_addr; } ;


 scalar_t__ readw (scalar_t__) ;

__attribute__((used)) static u16 bcma_host_soc_read16(struct bcma_device *core, u16 offset)
{
 return readw(core->io_addr + offset);
}
