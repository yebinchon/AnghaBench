
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aac_dev {int dummy; } ;


 int DOORBELL_0 ;
 int DoorbellClrReg_p ;
 int DoorbellReg_p ;
 int DoorbellReg_s ;
 int ETIMEDOUT ;
 int HZ ;
 int Mailbox0 ;
 int Mailbox1 ;
 int Mailbox2 ;
 int Mailbox3 ;
 int Mailbox4 ;
 unsigned long jiffies ;
 int msleep (int) ;
 int sa_readl (struct aac_dev*,int ) ;
 int sa_readw (struct aac_dev*,int ) ;
 int sa_writel (struct aac_dev*,int ,int ) ;
 int sa_writew (struct aac_dev*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int sa_sync_cmd(struct aac_dev *dev, u32 command,
  u32 p1, u32 p2, u32 p3, u32 p4, u32 p5, u32 p6,
  u32 *ret, u32 *r1, u32 *r2, u32 *r3, u32 *r4)
{
 unsigned long start;
  int ok;



 sa_writel(dev, Mailbox0, command);



 sa_writel(dev, Mailbox1, p1);
 sa_writel(dev, Mailbox2, p2);
 sa_writel(dev, Mailbox3, p3);
 sa_writel(dev, Mailbox4, p4);




 sa_writew(dev, DoorbellClrReg_p, DOORBELL_0);



 sa_writew(dev, DoorbellReg_s, DOORBELL_0);

 ok = 0;
 start = jiffies;

 while(time_before(jiffies, start+30*HZ))
 {



  udelay(5);




  if(sa_readw(dev, DoorbellReg_p) & DOORBELL_0) {
   ok = 1;
   break;
  }
  msleep(1);
 }

 if (ok != 1)
  return -ETIMEDOUT;



 sa_writew(dev, DoorbellClrReg_p, DOORBELL_0);



 if (ret)
  *ret = sa_readl(dev, Mailbox0);
 if (r1)
  *r1 = sa_readl(dev, Mailbox1);
 if (r2)
  *r2 = sa_readl(dev, Mailbox2);
 if (r3)
  *r3 = sa_readl(dev, Mailbox3);
 if (r4)
  *r4 = sa_readl(dev, Mailbox4);
 return 0;
}
