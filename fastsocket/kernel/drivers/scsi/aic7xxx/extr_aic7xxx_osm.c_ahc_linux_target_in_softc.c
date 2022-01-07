
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_target {unsigned int id; scalar_t__ channel; int dev; } ;
struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {struct scsi_target** starget; } ;


 TYPE_2__* dev_to_shost (int *) ;

__attribute__((used)) static inline struct scsi_target **
ahc_linux_target_in_softc(struct scsi_target *starget)
{
 struct ahc_softc *ahc =
  *((struct ahc_softc **)dev_to_shost(&starget->dev)->hostdata);
 unsigned int target_offset;

 target_offset = starget->id;
 if (starget->channel != 0)
  target_offset += 8;

 return &ahc->platform_data->starget[target_offset];
}
