
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_mac {int dma_if; } ;


 int pasemi_write_mac_reg (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void write_mac_reg(const struct pasemi_mac *mac, unsigned int reg,
     unsigned int val)
{
 pasemi_write_mac_reg(mac->dma_if, reg, val);
}
