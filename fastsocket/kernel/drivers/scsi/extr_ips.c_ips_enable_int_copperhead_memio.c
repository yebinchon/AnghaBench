
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mem_ptr; } ;
typedef TYPE_1__ ips_ha_t ;


 int IPS_BIT_EI ;
 scalar_t__ IPS_REG_HISR ;
 int METHOD_TRACE (char*,int) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void
ips_enable_int_copperhead_memio(ips_ha_t * ha)
{
 METHOD_TRACE("ips_enable_int_copperhead_memio", 1);

 writeb(IPS_BIT_EI, ha->mem_ptr + IPS_REG_HISR);
 readb(ha->mem_ptr + IPS_REG_HISR);
}
