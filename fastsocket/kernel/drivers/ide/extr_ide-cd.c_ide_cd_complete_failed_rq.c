
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int sense_len; scalar_t__ sense; int bio; scalar_t__ special; } ;
typedef int ide_drive_t ;


 int BUG () ;
 int EIO ;
 void* bio_data (int ) ;
 int blk_rq_bytes (struct request*) ;
 int cdrom_analyze_sense_data (int *,struct request*) ;
 scalar_t__ ide_end_rq (int *,struct request*,int ,int ) ;
 int memcpy (scalar_t__,void*,int) ;

__attribute__((used)) static void ide_cd_complete_failed_rq(ide_drive_t *drive, struct request *rq)
{






 struct request *failed = (struct request *)rq->special;
 void *sense = bio_data(rq->bio);

 if (failed) {
  if (failed->sense) {





   memcpy(failed->sense, sense, 18);
   failed->sense_len = rq->sense_len;
  }
  cdrom_analyze_sense_data(drive, failed);

  if (ide_end_rq(drive, failed, -EIO, blk_rq_bytes(failed)))
   BUG();
 } else
  cdrom_analyze_sense_data(drive, ((void*)0));
}
