
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 int EBUSY ;
 int HZ ;
 scalar_t__ NSC_STATUS ;
 int TPM_TIMEOUT ;
 int inb (scalar_t__) ;
 int jiffies ;
 int msleep (int ) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int wait_for_stat(struct tpm_chip *chip, u8 mask, u8 val, u8 * data)
{
 unsigned long stop;


 *data = inb(chip->vendor.base + NSC_STATUS);
 if ((*data & mask) == val)
  return 0;


 stop = jiffies + 10 * HZ;
 do {
  msleep(TPM_TIMEOUT);
  *data = inb(chip->vendor.base + 1);
  if ((*data & mask) == val)
   return 0;
 }
 while (time_before(jiffies, stop));

 return -EBUSY;
}
