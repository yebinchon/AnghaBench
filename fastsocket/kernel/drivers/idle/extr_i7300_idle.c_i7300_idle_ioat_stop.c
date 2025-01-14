
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ IOAT1_CHANCMD_OFFSET ;
 scalar_t__ IOAT1_CHANSTS_OFFSET ;
 int IOAT_CHANCMD_RESET ;
 int IOAT_CHANSTS_ACTIVE ;
 int IOAT_CHANSTS_STATUS ;
 int MAX_STOP_RETRIES ;
 int dprintk (char*,int) ;
 scalar_t__ ioat_chanbase ;
 int readq (scalar_t__) ;
 int udelay (int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void i7300_idle_ioat_stop(void)
{
 int i;
 u64 sts;

 for (i = 0; i < MAX_STOP_RETRIES; i++) {
  writeb(IOAT_CHANCMD_RESET,
   ioat_chanbase + IOAT1_CHANCMD_OFFSET);

  udelay(10);

  sts = readq(ioat_chanbase + IOAT1_CHANSTS_OFFSET) &
   IOAT_CHANSTS_STATUS;

  if (sts != IOAT_CHANSTS_ACTIVE)
   break;

 }

 if (i == MAX_STOP_RETRIES) {
  dprintk("failed to stop I/O AT after %d retries\n",
   MAX_STOP_RETRIES);
 }
}
