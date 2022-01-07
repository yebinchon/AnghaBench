
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int (* status ) (struct tpm_chip*) ;int req_complete_mask; int req_complete_val; int req_canceled; int (* recv ) (struct tpm_chip*,int*,size_t) ;int (* cancel ) (struct tpm_chip*) ;scalar_t__ irq; int (* send ) (struct tpm_chip*,int*,size_t) ;} ;
struct tpm_chip {int tpm_mutex; int dev; TYPE_1__ vendor; } ;
typedef int ssize_t ;
typedef int __be32 ;


 int E2BIG ;
 int ECANCELED ;
 int ENODATA ;
 int ETIME ;
 int TPM_TIMEOUT ;
 size_t be32_to_cpu (int ) ;
 int dev_err (int ,char*,...) ;
 unsigned long jiffies ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rmb () ;
 int stub1 (struct tpm_chip*,int*,size_t) ;
 int stub2 (struct tpm_chip*) ;
 int stub3 (struct tpm_chip*) ;
 int stub4 (struct tpm_chip*,int*,size_t) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 unsigned long tpm_calc_ordinal_duration (struct tpm_chip*,size_t) ;

__attribute__((used)) static ssize_t tpm_transmit(struct tpm_chip *chip, const char *buf,
       size_t bufsiz)
{
 ssize_t rc;
 u32 count, ordinal;
 unsigned long stop;

 count = be32_to_cpu(*((__be32 *) (buf + 2)));
 ordinal = be32_to_cpu(*((__be32 *) (buf + 6)));
 if (count == 0)
  return -ENODATA;
 if (count > bufsiz) {
  dev_err(chip->dev,
   "invalid count value %x %zx \n", count, bufsiz);
  return -E2BIG;
 }

 mutex_lock(&chip->tpm_mutex);

 if ((rc = chip->vendor.send(chip, (u8 *) buf, count)) < 0) {
  dev_err(chip->dev,
   "tpm_transmit: tpm_send: error %zd\n", rc);
  goto out;
 }

 if (chip->vendor.irq)
  goto out_recv;

 stop = jiffies + tpm_calc_ordinal_duration(chip, ordinal);
 do {
  u8 status = chip->vendor.status(chip);
  if ((status & chip->vendor.req_complete_mask) ==
      chip->vendor.req_complete_val)
   goto out_recv;

  if ((status == chip->vendor.req_canceled)) {
   dev_err(chip->dev, "Operation Canceled\n");
   rc = -ECANCELED;
   goto out;
  }

  msleep(TPM_TIMEOUT);
  rmb();
 } while (time_before(jiffies, stop));

 chip->vendor.cancel(chip);
 dev_err(chip->dev, "Operation Timed out\n");
 rc = -ETIME;
 goto out;

out_recv:
 rc = chip->vendor.recv(chip, (u8 *) buf, bufsiz);
 if (rc < 0)
  dev_err(chip->dev,
   "tpm_transmit: tpm_recv: error %zd\n", rc);
out:
 mutex_unlock(&chip->tpm_mutex);
 return rc;
}
