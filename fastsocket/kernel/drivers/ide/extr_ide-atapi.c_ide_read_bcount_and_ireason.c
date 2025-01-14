
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ide_taskfile {int lbah; int lbam; int nsect; } ;
struct TYPE_8__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_7__ {TYPE_1__* tp_ops; } ;
struct TYPE_6__ {int (* tf_read ) (TYPE_3__*,struct ide_taskfile*,int) ;} ;


 int IDE_VALID_LBAH ;
 int IDE_VALID_LBAM ;
 int IDE_VALID_NSECT ;
 int stub1 (TYPE_3__*,struct ide_taskfile*,int) ;

void ide_read_bcount_and_ireason(ide_drive_t *drive, u16 *bcount, u8 *ireason)
{
 struct ide_taskfile tf;

 drive->hwif->tp_ops->tf_read(drive, &tf, IDE_VALID_NSECT |
         IDE_VALID_LBAM | IDE_VALID_LBAH);

 *bcount = (tf.lbah << 8) | tf.lbam;
 *ireason = tf.nsect & 3;
}
