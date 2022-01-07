
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct sbd_port {int initialised; struct uart_port port; } ;


 int R_DUART_AUXCTL_X ;
 int R_DUART_CMD ;
 int R_DUART_FULL_CTL ;
 int R_DUART_IMRREG (int) ;
 int R_DUART_MODE_REG_1 ;
 int R_DUART_MODE_REG_2 ;
 int R_DUART_OPCR_X ;
 int V_DUART_BITS_PER_CHAR_8 ;
 int V_DUART_INT_TIME (int ) ;
 int V_DUART_MISC_CMD_RESET_RX ;
 int V_DUART_MISC_CMD_RESET_TX ;
 int V_DUART_SIG_FULL (int) ;
 int write_sbdchn (struct sbd_port*,int ,int) ;
 int write_sbdshr (struct sbd_port*,int ,int ) ;

__attribute__((used)) static void sbd_init_port(struct sbd_port *sport)
{
 struct uart_port *uport = &sport->port;

 if (sport->initialised)
  return;


 write_sbdchn(sport, R_DUART_CMD, V_DUART_MISC_CMD_RESET_TX);
 write_sbdchn(sport, R_DUART_CMD, V_DUART_MISC_CMD_RESET_RX);
 write_sbdchn(sport, R_DUART_MODE_REG_1, V_DUART_BITS_PER_CHAR_8);
 write_sbdchn(sport, R_DUART_MODE_REG_2, 0);
 write_sbdchn(sport, R_DUART_FULL_CTL,
       V_DUART_INT_TIME(0) | V_DUART_SIG_FULL(15));
 write_sbdchn(sport, R_DUART_OPCR_X, 0);
 write_sbdchn(sport, R_DUART_AUXCTL_X, 0);
 write_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2), 0);

 sport->initialised = 1;
}
