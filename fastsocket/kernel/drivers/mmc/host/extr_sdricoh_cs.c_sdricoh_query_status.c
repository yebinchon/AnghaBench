
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int R21C_STATUS ;
 int R2E4_STATUS_RESP ;
 int dev_err (struct device*,char*,unsigned int) ;
 unsigned int sdricoh_readl (struct sdricoh_host*,int ) ;
 int sdricoh_writel (struct sdricoh_host*,int ,unsigned int) ;

__attribute__((used)) static int sdricoh_query_status(struct sdricoh_host *host, unsigned int wanted,
    unsigned int timeout){
 unsigned int loop;
 unsigned int status = 0;
 struct device *dev = host->dev;
 for (loop = 0; loop < timeout; loop++) {
  status = sdricoh_readl(host, R21C_STATUS);
  sdricoh_writel(host, R2E4_STATUS_RESP, status);
  if (status & wanted)
   break;
 }

 if (loop == timeout) {
  dev_err(dev, "query_status: timeout waiting for %x\n", wanted);
  return -ETIMEDOUT;
 }


 if (status & 0x7F0000) {
  dev_err(dev, "waiting for status bit %x failed\n", wanted);
  return -EINVAL;
 }
 return 0;

}
