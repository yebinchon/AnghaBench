
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;
typedef int data ;


 int tpm_transmit (struct tpm_chip*,int*,int) ;

void tpm_continue_selftest(struct tpm_chip *chip)
{
 u8 data[] = {
  0, 193,
  0, 0, 0, 10,
  0, 0, 0, 83,
 };

 tpm_transmit(chip, data, sizeof(data));
}
