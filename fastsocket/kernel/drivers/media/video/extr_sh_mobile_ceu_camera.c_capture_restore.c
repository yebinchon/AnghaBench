
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ v4l2_dev; } ;
struct sh_mobile_ceu_dev {TYPE_2__ ici; } ;


 int CAPSR ;
 int CSTSR ;
 int HZ ;
 int ceu_read (struct sh_mobile_ceu_dev*,int ) ;
 int ceu_write (struct sh_mobile_ceu_dev*,int ,int) ;
 int dev_err (int ,char*) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_after (int,unsigned long) ;
 scalar_t__ time_before (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void capture_restore(struct sh_mobile_ceu_dev *pcdev, u32 capsr)
{
 unsigned long timeout = jiffies + 10 * HZ;





 while ((ceu_read(pcdev, CSTSR) & 1) && time_before(jiffies, timeout))
  msleep(1);

 if (time_after(jiffies, timeout)) {
  dev_err(pcdev->ici.v4l2_dev.dev,
   "Timeout waiting for frame end! Interface problem?\n");
  return;
 }


 while (ceu_read(pcdev, CAPSR) & (1 << 16))
  udelay(10);


 if (capsr & ~(1 << 16))
  ceu_write(pcdev, CAPSR, capsr);
}
