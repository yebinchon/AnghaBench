
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_device {int id; int channel; int lun; } ;



__attribute__((used)) static inline u16 lun_from_dev(struct scsi_device *dev)
{
 return (0x2 << 14) | (dev->id << 8) | (dev->channel << 5) | dev->lun;
}
