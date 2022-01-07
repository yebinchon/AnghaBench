
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ machine_is_assabet () ;
 scalar_t__ machine_is_pfs168 () ;

int dma_needs_bounce(struct device *dev, dma_addr_t addr, size_t size)
{







 return ((machine_is_assabet() || machine_is_pfs168()) &&
  (addr >= 0xc8000000 || (addr + size) >= 0xc8000000));
}
