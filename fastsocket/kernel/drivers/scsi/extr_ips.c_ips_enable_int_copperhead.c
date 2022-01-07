
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_addr; } ;
typedef TYPE_1__ ips_ha_t ;


 int IPS_BIT_EI ;
 scalar_t__ IPS_REG_HISR ;
 int METHOD_TRACE (char*,int) ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int ) ;

__attribute__((used)) static void
ips_enable_int_copperhead(ips_ha_t * ha)
{
 METHOD_TRACE("ips_enable_int_copperhead", 1);

 outb(ha->io_addr + IPS_REG_HISR, IPS_BIT_EI);
 inb(ha->io_addr + IPS_REG_HISR);
}
