
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ mem_ptr; } ;
typedef TYPE_1__ ips_ha_t ;


 int IPS_BIT_I2O_OPQI ;
 scalar_t__ IPS_REG_I2O_HIR ;
 int METHOD_TRACE (char*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int
ips_isintr_morpheus(ips_ha_t * ha)
{
 uint32_t Isr;

 METHOD_TRACE("ips_isintr_morpheus", 2);

 Isr = readl(ha->mem_ptr + IPS_REG_I2O_HIR);

 if (Isr & IPS_BIT_I2O_OPQI)
  return (1);
 else
  return (0);
}
