
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ata_device {unsigned int class; int id; TYPE_2__* link; } ;
typedef int id ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {scalar_t__ sector_buf; } ;


 int ATA_ID_WORDS ;
 int ENODEV ;
 int ata_dev_read_id (struct ata_device*,unsigned int*,unsigned int,int *) ;
 int ata_dev_same_device (struct ata_device*,unsigned int,int *) ;
 int memcpy (int ,int *,int) ;

int ata_dev_reread_id(struct ata_device *dev, unsigned int readid_flags)
{
 unsigned int class = dev->class;
 u16 *id = (void *)dev->link->ap->sector_buf;
 int rc;


 rc = ata_dev_read_id(dev, &class, readid_flags, id);
 if (rc)
  return rc;


 if (!ata_dev_same_device(dev, class, id))
  return -ENODEV;

 memcpy(dev->id, id, sizeof(id[0]) * ATA_ID_WORDS);
 return 0;
}
