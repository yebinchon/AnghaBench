
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;
typedef int id ;


 int ATA_ID_WORDS ;
 int DMA_FROM_DEVICE ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int,int ) ;

unsigned int ata_do_dev_read_id(struct ata_device *dev,
     struct ata_taskfile *tf, u16 *id)
{
 return ata_exec_internal(dev, tf, ((void*)0), DMA_FROM_DEVICE,
         id, sizeof(id[0]) * ATA_ID_WORDS, 0);
}
