
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PLD_RTCCR ;
 scalar_t__ PLD_RTCRDDATA ;
 scalar_t__ PLD_RTCRSTODT ;
 int inw (unsigned long) ;
 int outw (int,unsigned long) ;

__attribute__((used)) static unsigned char
in_byte_rtc(unsigned int reg_addr)
{
 unsigned char retval;


 outw(0x0001,(unsigned long)PLD_RTCRSTODT);

 outw((reg_addr&0xff),(unsigned long)PLD_RTCRDDATA);

 outw(0x0001,(unsigned long)PLD_RTCCR);

 while(inw((unsigned long)PLD_RTCCR));


 retval=(inw((unsigned long)PLD_RTCRDDATA) & 0xff00)>>8;


 outw(0x0000,(unsigned long)PLD_RTCRSTODT);

 return retval;
}
