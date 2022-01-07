
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int ide_startstop_t ;
struct TYPE_5__ {scalar_t__ max_failures; scalar_t__ failures; } ;
typedef TYPE_1__ ide_drive_t ;


 int EBUSY ;
 int __ide_wait_stat (TYPE_1__*,int ,int ,unsigned long,int *) ;
 int ide_error (TYPE_1__*,char*,int ) ;
 int ide_stopped ;

int ide_wait_stat(ide_startstop_t *startstop, ide_drive_t *drive, u8 good,
    u8 bad, unsigned long timeout)
{
 int err;
 u8 stat;


 if (drive->max_failures && (drive->failures > drive->max_failures)) {
  *startstop = ide_stopped;
  return 1;
 }

 err = __ide_wait_stat(drive, good, bad, timeout, &stat);

 if (err) {
  char *s = (err == -EBUSY) ? "status timeout" : "status error";
  *startstop = ide_error(drive, s, stat);
 }

 return err;
}
