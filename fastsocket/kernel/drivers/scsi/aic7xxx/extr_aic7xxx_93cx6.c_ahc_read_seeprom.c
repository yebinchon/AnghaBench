
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct seeprom_descriptor {int sd_MS; int sd_CS; int sd_chip; int sd_DO; int sd_CK; int sd_DI; int sd_RDY; } ;


 int CLOCK_PULSE (struct seeprom_descriptor*,int ) ;
 int SEEPROM_DATA_INB (struct seeprom_descriptor*) ;
 int SEEPROM_OUTB (struct seeprom_descriptor*,int) ;
 int printf (char*,...) ;
 int reset_seeprom (struct seeprom_descriptor*) ;
 int seeprom_read ;
 int send_seeprom_cmd (struct seeprom_descriptor*,int *) ;

int
ahc_read_seeprom(struct seeprom_descriptor *sd, uint16_t *buf,
   u_int start_addr, u_int count)
{
 int i = 0;
 u_int k = 0;
 uint16_t v;
 uint8_t temp;





 for (k = start_addr; k < count + start_addr; k++) {




  send_seeprom_cmd(sd, &seeprom_read);


  temp = sd->sd_MS ^ sd->sd_CS;
  for (i = (sd->sd_chip - 1); i >= 0; i--) {
   if ((k & (1 << i)) != 0)
    temp ^= sd->sd_DO;
   SEEPROM_OUTB(sd, temp);
   CLOCK_PULSE(sd, sd->sd_RDY);
   SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
   CLOCK_PULSE(sd, sd->sd_RDY);
   if ((k & (1 << i)) != 0)
    temp ^= sd->sd_DO;
  }







  v = 0;
  for (i = 16; i >= 0; i--) {
   SEEPROM_OUTB(sd, temp);
   CLOCK_PULSE(sd, sd->sd_RDY);
   v <<= 1;
   if (SEEPROM_DATA_INB(sd) & sd->sd_DI)
    v |= 1;
   SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
   CLOCK_PULSE(sd, sd->sd_RDY);
  }

  buf[k - start_addr] = v;


  reset_seeprom(sd);
 }
 return (1);
}
