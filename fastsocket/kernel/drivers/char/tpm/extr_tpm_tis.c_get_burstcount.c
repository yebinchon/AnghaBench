
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timeout_d; int locality; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 int EBUSY ;
 scalar_t__ TPM_STS (int ) ;
 int TPM_TIMEOUT ;
 int ioread8 (scalar_t__) ;
 unsigned long jiffies ;
 int msleep (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int get_burstcount(struct tpm_chip *chip)
{
 unsigned long stop;
 int burstcnt;



 stop = jiffies + chip->vendor.timeout_d;
 do {
  burstcnt = ioread8(chip->vendor.iobase +
       TPM_STS(chip->vendor.locality) + 1);
  burstcnt += ioread8(chip->vendor.iobase +
        TPM_STS(chip->vendor.locality) +
        2) << 8;
  if (burstcnt)
   return burstcnt;
  msleep(TPM_TIMEOUT);
 } while (time_before(jiffies, stop));
 return -EBUSY;
}
