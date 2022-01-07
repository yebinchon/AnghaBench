
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SCD_BASE ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline unsigned int SCD_QUEUE_STATUS_BITS(unsigned int chnl)
{
 if (chnl < 20)
  return SCD_BASE + 0x10c + chnl * 4;
 WARN_ON_ONCE(chnl >= 32);
 return SCD_BASE + 0x384 + (chnl - 20) * 4;
}
