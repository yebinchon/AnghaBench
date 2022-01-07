
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct amba_kmi_port* port_data; } ;
struct amba_kmi_port {int dummy; } ;


 int KMIDATA ;
 int KMISTAT ;
 int KMISTAT_TXEMPTY ;
 int SERIO_TIMEOUT ;
 int readb (int ) ;
 int udelay (int) ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static int amba_kmi_write(struct serio *io, unsigned char val)
{
 struct amba_kmi_port *kmi = io->port_data;
 unsigned int timeleft = 10000;

 while ((readb(KMISTAT) & KMISTAT_TXEMPTY) == 0 && --timeleft)
  udelay(10);

 if (timeleft)
  writeb(val, KMIDATA);

 return timeleft ? 0 : SERIO_TIMEOUT;
}
