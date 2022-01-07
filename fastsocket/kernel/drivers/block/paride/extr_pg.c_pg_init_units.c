
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int drive; int name; int * bufptr; scalar_t__ present; scalar_t__ busy; int access; int pia; int * pi; } ;


 size_t D_PRT ;
 size_t D_SLV ;
 int PG_NAMELEN ;
 int PG_UNITS ;
 int clear_bit (int ,int *) ;
 struct pg* devices ;
 int*** drives ;
 char* name ;
 scalar_t__ pg_drive_count ;
 int snprintf (int ,int ,char*,char*,char) ;

__attribute__((used)) static void pg_init_units(void)
{
 int unit;

 pg_drive_count = 0;
 for (unit = 0; unit < PG_UNITS; unit++) {
  int *parm = *drives[unit];
  struct pg *dev = &devices[unit];
  dev->pi = &dev->pia;
  clear_bit(0, &dev->access);
  dev->busy = 0;
  dev->present = 0;
  dev->bufptr = ((void*)0);
  dev->drive = parm[D_SLV];
  snprintf(dev->name, PG_NAMELEN, "%s%c", name, 'a'+unit);
  if (parm[D_PRT])
   pg_drive_count++;
 }
}
