
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_HEADER ;
 int W_HEADER ;
 int recv_ack () ;
 int recv_byte () ;
 int send_ack () ;
 int send_byte (int) ;
 int send_start () ;
 int send_stop () ;

int read_eeprom(char *buffer, int eeprom_size, int size)
{
 int i = 0, err;

 send_start();
 send_byte(W_HEADER);
 recv_ack();


 if (eeprom_size > 2048) {
  send_byte(0x00);
  recv_ack();
 }

 send_start();
 send_byte(R_HEADER);
 err = recv_ack();
 if (err == -1)
  return err;

 for (i = 0; i < size; i++) {
  *buffer++ = recv_byte();
  send_ack();
 }



 send_stop();
}
