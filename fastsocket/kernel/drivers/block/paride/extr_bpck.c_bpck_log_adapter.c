
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t mode; int delay; int port; int unit; int device; } ;
typedef TYPE_1__ PIA ;


 size_t BPCK_VERSION ;
 int bpck_read_eeprom (TYPE_1__*,char*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static void bpck_log_adapter( PIA *pi, char * scratch, int verbose )

{ char *mode_string[5] = { "4-bit","8-bit","EPP-8",
        "EPP-16","EPP-32" };





 bpck_read_eeprom(pi,scratch);
 printk("%s: bpck %s, backpack %8.8s unit %d",
  pi->device,BPCK_VERSION,&scratch[110],pi->unit);
 printk(" at 0x%x, mode %d (%s), delay %d\n",pi->port,
  pi->mode,mode_string[pi->mode],pi->delay);
}
