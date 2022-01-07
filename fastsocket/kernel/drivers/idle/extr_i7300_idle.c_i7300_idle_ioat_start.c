
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ IOAT1_CHANCMD_OFFSET ;
 int IOAT_CHANCMD_START ;
 scalar_t__ IOAT_CHANERR_OFFSET ;
 scalar_t__ ioat_chanbase ;
 scalar_t__ readl (scalar_t__) ;
 int writeb (int ,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int i7300_idle_ioat_start(void)
{
 u32 err;

 err = readl(ioat_chanbase + IOAT_CHANERR_OFFSET);
 if (err)
  writel(err, ioat_chanbase + IOAT_CHANERR_OFFSET);

 writeb(IOAT_CHANCMD_START, ioat_chanbase + IOAT1_CHANCMD_OFFSET);
 return 0;
}
