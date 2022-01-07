
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cs55x0; } ;


 TYPE_1__* gx_params ;
 int pci_write_config_byte (int ,int,int) ;

__attribute__((used)) static void gx_write_byte(int reg, int value)
{
 pci_write_config_byte(gx_params->cs55x0, reg, value);
}
