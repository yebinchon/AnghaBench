
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h3600_irda_data ;
 int h3xxx_flash_data ;
 int h3xxx_flash_resource ;
 int sa11x0_set_flash_data (int *,int *,int) ;
 int sa11x0_set_irda_data (int *) ;

__attribute__((used)) static void h3xxx_mach_init(void)
{
 sa11x0_set_flash_data(&h3xxx_flash_data, &h3xxx_flash_resource, 1);
 sa11x0_set_irda_data(&h3600_irda_data);
}
