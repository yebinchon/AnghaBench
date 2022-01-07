
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {scalar_t__ base; } ;
typedef scalar_t__ bus_addr_t ;


 scalar_t__ SRAM_START ;

__attribute__((used)) static inline bus_addr_t sram_addr(const struct lanai_dev *lanai, int offset)
{
 return lanai->base + SRAM_START + offset;
}
