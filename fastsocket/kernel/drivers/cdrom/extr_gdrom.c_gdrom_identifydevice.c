
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDROM_COM_IDDEV ;
 int GDROM_DATA_REG ;
 int GDROM_STATUSCOMMAND_REG ;
 short ctrl_inw (int ) ;
 int ctrl_outb (int ,int ) ;
 int gdrom_getsense (int *) ;
 int gdrom_wait_busy_sleeps () ;
 int gdrom_wait_clrbusy () ;

__attribute__((used)) static void gdrom_identifydevice(void *buf)
{
 int c;
 short *data = buf;



 if (!gdrom_wait_clrbusy()) {
  gdrom_getsense(((void*)0));
  return;
 }
 ctrl_outb(GDROM_COM_IDDEV, GDROM_STATUSCOMMAND_REG);
 if (!gdrom_wait_busy_sleeps()) {
  gdrom_getsense(((void*)0));
  return;
 }

 for (c = 0; c < 40; c++)
  data[c] = ctrl_inw(GDROM_DATA_REG);
}
