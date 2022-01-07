
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;
struct device {int dummy; } ;
typedef int savestate ;
typedef int pm_message_t ;


 int ENODEV ;
 struct tpm_chip* dev_get_drvdata (struct device*) ;
 int tpm_transmit (struct tpm_chip*,int*,int) ;

int tpm_pm_suspend(struct device *dev, pm_message_t pm_state)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);
 u8 savestate[] = {
  0, 193,
  0, 0, 0, 10,
  0, 0, 0, 152
 };

 if (chip == ((void*)0))
  return -ENODEV;

 tpm_transmit(chip, savestate, sizeof(savestate));
 return 0;
}
