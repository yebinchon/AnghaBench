
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_device {int dummy; } ;


 int SSB_TPSFLAG ;
 int SSB_TPSFLAG_BPFLAG ;
 int ssb_read32 (struct ssb_device*,int ) ;

__attribute__((used)) static inline u32 ssb_irqflag(struct ssb_device *dev)
{
 u32 tpsflag = ssb_read32(dev, SSB_TPSFLAG);
 if (tpsflag)
  return ssb_read32(dev, SSB_TPSFLAG) & SSB_TPSFLAG_BPFLAG;
 else

  return 0x3f;
}
