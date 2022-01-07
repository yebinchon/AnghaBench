
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int tf ;
struct ata_taskfile {int feature; } ;
struct ata_port {TYPE_2__* ops; } ;
struct ata_device {int horkage; int devno; TYPE_1__* link; } ;
struct TYPE_4__ {scalar_t__ (* sff_check_status ) (struct ata_port*) ;int (* sff_tf_read ) (struct ata_port*,struct ata_taskfile*) ;int (* sff_dev_select ) (struct ata_port*,int ) ;} ;
struct TYPE_3__ {struct ata_port* ap; } ;


 unsigned int ATA_DEV_ATA ;
 unsigned int ATA_DEV_NONE ;
 unsigned int ATA_DEV_UNKNOWN ;
 int ATA_HORKAGE_DIAGNOSTIC ;
 unsigned int ata_dev_classify (struct ata_taskfile*) ;
 int memset (struct ata_taskfile*,int ,int) ;
 int stub1 (struct ata_port*,int ) ;
 int stub2 (struct ata_port*,struct ata_taskfile*) ;
 scalar_t__ stub3 (struct ata_port*) ;

unsigned int ata_sff_dev_classify(struct ata_device *dev, int present,
      u8 *r_err)
{
 struct ata_port *ap = dev->link->ap;
 struct ata_taskfile tf;
 unsigned int class;
 u8 err;

 ap->ops->sff_dev_select(ap, dev->devno);

 memset(&tf, 0, sizeof(tf));

 ap->ops->sff_tf_read(ap, &tf);
 err = tf.feature;
 if (r_err)
  *r_err = err;


 if (err == 0)

  dev->horkage |= ATA_HORKAGE_DIAGNOSTIC;
 else if (err == 1)
                   ;
 else if ((dev->devno == 0) && (err == 0x81))
                   ;
 else
  return ATA_DEV_NONE;


 class = ata_dev_classify(&tf);

 if (class == ATA_DEV_UNKNOWN) {






  if (present && (dev->horkage & ATA_HORKAGE_DIAGNOSTIC))
   class = ATA_DEV_ATA;
  else
   class = ATA_DEV_NONE;
 } else if ((class == ATA_DEV_ATA) &&
     (ap->ops->sff_check_status(ap) == 0))
  class = ATA_DEV_NONE;

 return class;
}
