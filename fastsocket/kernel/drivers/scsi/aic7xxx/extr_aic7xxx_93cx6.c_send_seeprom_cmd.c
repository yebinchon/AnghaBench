
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct seeprom_descriptor {int sd_MS; int sd_CS; int sd_CK; int sd_DO; int sd_RDY; } ;
struct seeprom_cmd {int len; scalar_t__* bits; } ;


 int CLOCK_PULSE (struct seeprom_descriptor*,int ) ;
 int SEEPROM_OUTB (struct seeprom_descriptor*,int) ;

__attribute__((used)) static void
send_seeprom_cmd(struct seeprom_descriptor *sd, const struct seeprom_cmd *cmd)
{
 uint8_t temp;
 int i = 0;


 temp = sd->sd_MS ^ sd->sd_CS;
 SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
 CLOCK_PULSE(sd, sd->sd_RDY);

 for (i = 0; i < cmd->len; i++) {
  if (cmd->bits[i] != 0)
   temp ^= sd->sd_DO;
  SEEPROM_OUTB(sd, temp);
  CLOCK_PULSE(sd, sd->sd_RDY);
  SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
  CLOCK_PULSE(sd, sd->sd_RDY);
  if (cmd->bits[i] != 0)
   temp ^= sd->sd_DO;
 }
}
