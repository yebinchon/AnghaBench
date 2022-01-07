
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm3386_reg_read (int,int ) ;

int pm3386_secondary_present(void)
{
 return pm3386_reg_read(1, 0) == 0x3386;
}
