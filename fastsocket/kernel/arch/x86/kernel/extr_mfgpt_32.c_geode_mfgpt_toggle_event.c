
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EIO ;
 int MFGPT_CMP1 ;



 int MFGPT_MAX_TIMERS ;
 int MSR_MFGPT_IRQ ;
 int MSR_MFGPT_NR ;
 int rdmsr (int,int,int) ;
 int wrmsr (int,int,int) ;

int geode_mfgpt_toggle_event(int timer, int cmp, int event, int enable)
{
 u32 msr, mask, value, dummy;
 int shift = (cmp == MFGPT_CMP1) ? 0 : 8;

 if (timer < 0 || timer >= MFGPT_MAX_TIMERS)
  return -EIO;





 switch (event) {
 case 128:





  msr = MSR_MFGPT_NR;
  mask = 1 << (timer + 24);
  break;

 case 129:
  msr = MSR_MFGPT_NR;
  mask = 1 << (timer + shift);
  break;

 case 130:
  msr = MSR_MFGPT_IRQ;
  mask = 1 << (timer + shift);
  break;

 default:
  return -EIO;
 }

 rdmsr(msr, value, dummy);

 if (enable)
  value |= mask;
 else
  value &= ~mask;

 wrmsr(msr, value, dummy);
 return 0;
}
