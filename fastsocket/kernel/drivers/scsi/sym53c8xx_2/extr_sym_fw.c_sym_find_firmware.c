
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_fw {int dummy; } ;
struct sym_chip {int features; } ;


 int FE_DAC ;
 int FE_LDSTR ;
 int FE_NOPM ;
 int FE_PFEN ;
 struct sym_fw sym_fw1 ;
 struct sym_fw sym_fw2 ;

struct sym_fw *
sym_find_firmware(struct sym_chip *chip)
{
 if (chip->features & FE_LDSTR)
  return &sym_fw2;




 else
  return ((void*)0);
}
