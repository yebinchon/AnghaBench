
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 unsigned int CMD_INTERRUPT_ADAPTER ;
 unsigned int CMD_SYSTEM_IRQ ;
 int SIFCMD ;
 unsigned short SIFREADW (int ) ;
 int SIFSTS ;
 int SIFWRITEW (unsigned short,int ) ;

__attribute__((used)) static void tms380tr_exec_sifcmd(struct net_device *dev, unsigned int WriteValue)
{
 unsigned short cmd;
 unsigned short SifStsValue;
 unsigned long loop_counter;

 WriteValue = ((WriteValue ^ CMD_SYSTEM_IRQ) | CMD_INTERRUPT_ADAPTER);
 cmd = (unsigned short)WriteValue;
 loop_counter = 0,5 * 800000;
 do {
  SifStsValue = SIFREADW(SIFSTS);
 } while((SifStsValue & CMD_INTERRUPT_ADAPTER) && loop_counter--);
 SIFWRITEW(cmd, SIFCMD);

 return;
}
