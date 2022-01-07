
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int TEA6320_FFL ;
 int TEA6320_FFR ;
 int TEA6320_FRL ;
 int TEA6320_FRR ;
 int chip_write (struct CHIPSTATE*,int ,int) ;

__attribute__((used)) static int tea6320_initialize(struct CHIPSTATE * chip)
{
 chip_write(chip, TEA6320_FFR, 0x3f);
 chip_write(chip, TEA6320_FFL, 0x3f);
 chip_write(chip, TEA6320_FRR, 0x3f);
 chip_write(chip, TEA6320_FRL, 0x3f);

 return 0;
}
