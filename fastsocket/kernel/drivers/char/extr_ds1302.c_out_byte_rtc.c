
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PLD_RTCCR ;
 scalar_t__ PLD_RTCRSTODT ;
 scalar_t__ PLD_RTCWRDATA ;
 scalar_t__ inw (unsigned long) ;
 int outw (int,unsigned long) ;

__attribute__((used)) static void
out_byte_rtc(unsigned int reg_addr, unsigned char x)
{

 outw(0x0001,(unsigned long)PLD_RTCRSTODT);

 outw(((x<<8)|(reg_addr&0xff)),(unsigned long)PLD_RTCWRDATA);

 outw(0x0002,(unsigned long)PLD_RTCCR);

 while(inw((unsigned long)PLD_RTCCR));


 outw(0x0000,(unsigned long)PLD_RTCRSTODT);

}
