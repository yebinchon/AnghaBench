
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hd_geometry {int heads; int cylinders; int sectors; } ;
struct TYPE_4__ {int trk_per_cyl; int no_cyl; } ;
struct dasd_eckd_private {TYPE_2__ rdc_data; } ;
struct dasd_block {int bp_block; TYPE_1__* base; } ;
struct TYPE_3__ {scalar_t__ private; } ;


 scalar_t__ dasd_check_blocksize (int ) ;
 int recs_per_track (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
dasd_eckd_fill_geometry(struct dasd_block *block, struct hd_geometry *geo)
{
 struct dasd_eckd_private *private;

 private = (struct dasd_eckd_private *) block->base->private;
 if (dasd_check_blocksize(block->bp_block) == 0) {
  geo->sectors = recs_per_track(&private->rdc_data,
           0, block->bp_block);
 }
 geo->cylinders = private->rdc_data.no_cyl;
 geo->heads = private->rdc_data.trk_per_cyl;
 return 0;
}
