
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timeout_a; int int_queue; scalar_t__ irq; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 scalar_t__ TPM_ACCESS (int) ;
 int TPM_ACCESS_REQUEST_USE ;
 int TPM_TIMEOUT ;
 scalar_t__ check_locality (struct tpm_chip*,int) ;
 int iowrite8 (int ,scalar_t__) ;
 unsigned long jiffies ;
 int msleep (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 long wait_event_interruptible_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int request_locality(struct tpm_chip *chip, int l)
{
 unsigned long stop;
 long rc;

 if (check_locality(chip, l) >= 0)
  return l;

 iowrite8(TPM_ACCESS_REQUEST_USE,
   chip->vendor.iobase + TPM_ACCESS(l));

 if (chip->vendor.irq) {
  rc = wait_event_interruptible_timeout(chip->vendor.int_queue,
            (check_locality
             (chip, l) >= 0),
            chip->vendor.timeout_a);
  if (rc > 0)
   return l;

 } else {

  stop = jiffies + chip->vendor.timeout_a;
  do {
   if (check_locality(chip, l) >= 0)
    return l;
   msleep(TPM_TIMEOUT);
  }
  while (time_before(jiffies, stop));
 }
 return -1;
}
