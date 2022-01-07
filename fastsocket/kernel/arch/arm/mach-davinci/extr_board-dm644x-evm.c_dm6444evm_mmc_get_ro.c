
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int dm6444evm_msp430_get_pins () ;

__attribute__((used)) static int dm6444evm_mmc_get_ro(int module)
{
 int status = dm6444evm_msp430_get_pins();

 return (status < 0) ? status : status & BIT(6 + 8);
}
