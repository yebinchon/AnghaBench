
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDROM_ALTSTATUS_REG ;
 int GDROM_BCH_REG ;
 int GDROM_BCL_REG ;
 int GDROM_COM_PACKET ;
 int GDROM_DATA_REG ;
 unsigned long GDROM_DEFAULT_TIMEOUT ;
 int GDROM_ERROR_REG ;
 int GDROM_INTSEC_REG ;
 int GDROM_SECNUM_REG ;
 int GDROM_STATUSCOMMAND_REG ;
 int PHYSADDR (int ) ;
 int cpu_relax () ;
 int ctrl_outb (int,int ) ;
 int gdrom_data_request () ;
 int gdrom_getsense (int *) ;
 int gdrom_wait_clrbusy () ;
 unsigned long jiffies ;
 int outsw (int ,short*,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void gdrom_spicommand(void *spi_string, int buflen)
{
 short *cmd = spi_string;
 unsigned long timeout;


 ctrl_outb(0x08, GDROM_ALTSTATUS_REG);

 ctrl_outb(buflen & 0xFF, GDROM_BCL_REG);
 ctrl_outb((buflen >> 8) & 0xFF, GDROM_BCH_REG);

 ctrl_outb(0, GDROM_INTSEC_REG);
 ctrl_outb(0, GDROM_SECNUM_REG);
 ctrl_outb(0, GDROM_ERROR_REG);

 if (!gdrom_wait_clrbusy()) {
  gdrom_getsense(((void*)0));
  return;
 }
 timeout = jiffies + GDROM_DEFAULT_TIMEOUT;
 ctrl_outb(GDROM_COM_PACKET, GDROM_STATUSCOMMAND_REG);
 while (!gdrom_data_request() && time_before(jiffies, timeout))
  cpu_relax();
 if (!time_before(jiffies, timeout + 1)) {
  gdrom_getsense(((void*)0));
  return;
 }
 outsw(PHYSADDR(GDROM_DATA_REG), cmd, 6);
}
