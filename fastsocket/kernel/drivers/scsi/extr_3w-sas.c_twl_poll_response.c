
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int dma_addr_t ;
typedef int TW_Device_Extension ;


 int HZ ;
 int TWL_HOBQPH_REG_ADDR (int *) ;
 int TWL_HOBQPL_REG_ADDR (int *) ;
 int TW_RESID_OUT (int) ;
 unsigned long jiffies ;
 int msleep (int) ;
 void* readl (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int twl_poll_response(TW_Device_Extension *tw_dev, int request_id, int seconds)
{
 unsigned long before;
 dma_addr_t mfa;
 u32 regh, regl;
 u32 response;
 int retval = 1;
 int found = 0;

 before = jiffies;

 while (!found) {
  if (sizeof(dma_addr_t) > 4) {
   regh = readl(TWL_HOBQPH_REG_ADDR(tw_dev));
   regl = readl(TWL_HOBQPL_REG_ADDR(tw_dev));
   mfa = ((u64)regh << 32) | regl;
  } else
   mfa = readl(TWL_HOBQPL_REG_ADDR(tw_dev));

  response = (u32)mfa;

  if (TW_RESID_OUT(response) == request_id)
   found = 1;

  if (time_after(jiffies, before + HZ * seconds))
   goto out;

  msleep(50);
 }
 retval = 0;
out:
 return retval;
}
