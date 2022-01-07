
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct request {int* cmd; } ;
typedef int ide_startstop_t ;
typedef int ide_drive_t ;


 int BUG () ;




 int ide_do_devset (int *,struct request*) ;
 int ide_do_park_unpark (int *,struct request*) ;
 int ide_do_reset (int *) ;

__attribute__((used)) static ide_startstop_t ide_special_rq(ide_drive_t *drive, struct request *rq)
{
 u8 cmd = rq->cmd[0];

 switch (cmd) {
 case 129:
 case 128:
  return ide_do_park_unpark(drive, rq);
 case 131:
  return ide_do_devset(drive, rq);
 case 130:
  return ide_do_reset(drive);
 default:
  BUG();
 }
}
