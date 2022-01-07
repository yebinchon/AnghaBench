
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_status_mask; int ignore_status_mask; int uartclk; } ;
struct uart_sunsab_port {unsigned char cached_dafo; int cached_ebrg; int tec_timeout; int cec_timeout; int irqflags; int cached_mode; TYPE_1__ port; } ;


 unsigned int BRKINT ;
 unsigned int CREAD ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int IGNBRK ;
 unsigned int IGNPAR ;
 unsigned int INPCK ;
 unsigned int PARENB ;
 unsigned int PARMRK ;
 unsigned int PARODD ;
 unsigned char SAB82532_DAFO_CHL5 ;
 unsigned char SAB82532_DAFO_CHL6 ;
 unsigned char SAB82532_DAFO_CHL7 ;
 unsigned char SAB82532_DAFO_CHL8 ;
 unsigned char SAB82532_DAFO_PARE ;
 unsigned char SAB82532_DAFO_PAR_EVEN ;
 unsigned char SAB82532_DAFO_PAR_ODD ;
 unsigned char SAB82532_DAFO_STOP ;
 int SAB82532_ISR0_CDSC ;
 int SAB82532_ISR0_FERR ;
 int SAB82532_ISR0_PERR ;
 int SAB82532_ISR0_RFO ;
 int SAB82532_ISR0_RPF ;
 int SAB82532_ISR0_TCD ;
 int SAB82532_ISR0_TIME ;
 int SAB82532_ISR1_ALLS ;
 int SAB82532_ISR1_BRK ;
 int SAB82532_ISR1_CSC ;
 int SAB82532_ISR1_XPR ;
 int SAB82532_MODE_RAC ;
 int SAB82532_REGS_PENDING ;
 int SAB82532_XPR ;
 int calc_ebrg (unsigned int,int*,int*) ;
 int set_bit (int ,int *) ;
 int sunsab_tx_idle (struct uart_sunsab_port*) ;
 scalar_t__ test_bit (int ,int *) ;
 int uart_update_timeout (TYPE_1__*,unsigned int,int) ;

__attribute__((used)) static void sunsab_convert_to_sab(struct uart_sunsab_port *up, unsigned int cflag,
      unsigned int iflag, unsigned int baud,
      unsigned int quot)
{
 unsigned char dafo;
 int bits, n, m;


 switch (cflag & CSIZE) {
       case 131: dafo = SAB82532_DAFO_CHL5; bits = 7; break;
       case 130: dafo = SAB82532_DAFO_CHL6; bits = 8; break;
       case 129: dafo = SAB82532_DAFO_CHL7; bits = 9; break;
       case 128: dafo = SAB82532_DAFO_CHL8; bits = 10; break;

       default: dafo = SAB82532_DAFO_CHL5; bits = 7; break;
 }

 if (cflag & CSTOPB) {
  dafo |= SAB82532_DAFO_STOP;
  bits++;
 }

 if (cflag & PARENB) {
  dafo |= SAB82532_DAFO_PARE;
  bits++;
 }

 if (cflag & PARODD) {
  dafo |= SAB82532_DAFO_PAR_ODD;
 } else {
  dafo |= SAB82532_DAFO_PAR_EVEN;
 }
 up->cached_dafo = dafo;

 calc_ebrg(baud, &n, &m);

 up->cached_ebrg = n | (m << 6);

 up->tec_timeout = (10 * 1000000) / baud;
 up->cec_timeout = up->tec_timeout >> 2;
 up->port.read_status_mask = (SAB82532_ISR0_TCD | SAB82532_ISR0_TIME |
         SAB82532_ISR0_RFO | SAB82532_ISR0_RPF |
         SAB82532_ISR0_CDSC);
 up->port.read_status_mask |= (SAB82532_ISR1_CSC |
          SAB82532_ISR1_ALLS |
          SAB82532_ISR1_XPR) << 8;
 if (iflag & INPCK)
  up->port.read_status_mask |= (SAB82532_ISR0_PERR |
           SAB82532_ISR0_FERR);
 if (iflag & (BRKINT | PARMRK))
  up->port.read_status_mask |= (SAB82532_ISR1_BRK << 8);




 up->port.ignore_status_mask = 0;
 if (iflag & IGNPAR)
  up->port.ignore_status_mask |= (SAB82532_ISR0_PERR |
      SAB82532_ISR0_FERR);
 if (iflag & IGNBRK) {
  up->port.ignore_status_mask |= (SAB82532_ISR1_BRK << 8);




  if (iflag & IGNPAR)
   up->port.ignore_status_mask |= SAB82532_ISR0_RFO;
 }




 if ((cflag & CREAD) == 0)
  up->port.ignore_status_mask |= (SAB82532_ISR0_RPF |
      SAB82532_ISR0_TCD);

 uart_update_timeout(&up->port, cflag,
       (up->port.uartclk / (16 * quot)));




 up->cached_mode |= SAB82532_MODE_RAC;
 set_bit(SAB82532_REGS_PENDING, &up->irqflags);
 if (test_bit(SAB82532_XPR, &up->irqflags))
  sunsab_tx_idle(up);
}
