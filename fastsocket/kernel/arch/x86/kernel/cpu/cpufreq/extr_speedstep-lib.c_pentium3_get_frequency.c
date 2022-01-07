
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MSR_IA32_EBL_CR_POWERON ;
 unsigned int SPEEDSTEP_CPU_PIII_C_EARLY ;
 int dprintk (char*,...) ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static unsigned int pentium3_get_frequency(unsigned int processor)
{

 struct {
  unsigned int ratio;
  u8 bitmap;

 } msr_decode_mult[] = {
  { 30, 0x01 },
  { 35, 0x05 },
  { 40, 0x02 },
  { 45, 0x06 },
  { 50, 0x00 },
  { 55, 0x04 },
  { 60, 0x0b },
  { 65, 0x0f },
  { 70, 0x09 },
  { 75, 0x0d },
  { 80, 0x0a },
  { 85, 0x26 },
  { 90, 0x20 },
  { 100, 0x2b },
  { 0, 0xff }
 };


 struct {
  unsigned int value;
  u8 bitmap;

 } msr_decode_fsb[] = {
  { 66, 0x0 },
  { 100, 0x2 },
  { 133, 0x1 },
  { 0, 0xff}
 };

 u32 msr_lo, msr_tmp;
 int i = 0, j = 0;


 rdmsr(MSR_IA32_EBL_CR_POWERON, msr_lo, msr_tmp);
 dprintk("P3 - MSR_IA32_EBL_CR_POWERON: 0x%x 0x%x\n", msr_lo, msr_tmp);
 msr_tmp = msr_lo;


 msr_tmp &= 0x00c0000;
 msr_tmp >>= 18;
 while (msr_tmp != msr_decode_fsb[i].bitmap) {
  if (msr_decode_fsb[i].bitmap == 0xff)
   return 0;
  i++;
 }


 if (processor == SPEEDSTEP_CPU_PIII_C_EARLY) {
  dprintk("workaround for early PIIIs\n");
  msr_lo &= 0x03c00000;
 } else
  msr_lo &= 0x0bc00000;
 msr_lo >>= 22;
 while (msr_lo != msr_decode_mult[j].bitmap) {
  if (msr_decode_mult[j].bitmap == 0xff)
   return 0;
  j++;
 }

 dprintk("speed is %u\n",
  (msr_decode_mult[j].ratio * msr_decode_fsb[i].value * 100));

 return msr_decode_mult[j].ratio * msr_decode_fsb[i].value * 100;
}
