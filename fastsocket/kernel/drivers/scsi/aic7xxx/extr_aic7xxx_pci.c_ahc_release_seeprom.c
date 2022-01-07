
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seeprom_descriptor {int dummy; } ;


 int SEEPROM_OUTB (struct seeprom_descriptor*,int ) ;

void
ahc_release_seeprom(struct seeprom_descriptor *sd)
{

 SEEPROM_OUTB(sd, 0);
}
