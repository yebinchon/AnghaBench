
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_host {int dummy; } ;


 int se2_rd_all (struct orc_host*) ;
 int se2_update_all (struct orc_host*) ;

__attribute__((used)) static void read_eeprom(struct orc_host * host)
{
 if (se2_rd_all(host) != 1) {
  se2_update_all(host);
  se2_rd_all(host);
 }
}
