
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct request {int dummy; } ;
typedef int ide_startstop_t ;
struct TYPE_5__ {scalar_t__ media; } ;
typedef TYPE_1__ ide_drive_t ;


 int ide_ata_error (TYPE_1__*,struct request*,int ,int ) ;
 int ide_atapi_error (TYPE_1__*,struct request*,int ,int ) ;
 scalar_t__ ide_disk ;

__attribute__((used)) static ide_startstop_t __ide_error(ide_drive_t *drive, struct request *rq,
       u8 stat, u8 err)
{
 if (drive->media == ide_disk)
  return ide_ata_error(drive, rq, stat, err);
 return ide_atapi_error(drive, rq, stat, err);
}
