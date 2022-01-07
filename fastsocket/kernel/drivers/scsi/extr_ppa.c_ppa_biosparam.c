
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static int ppa_biosparam(struct scsi_device *sdev, struct block_device *dev,
       sector_t capacity, int ip[])
{
 ip[0] = 0x40;
 ip[1] = 0x20;
 ip[2] = ((unsigned long) capacity + 1) / (ip[0] * ip[1]);
 if (ip[2] > 1024) {
  ip[0] = 0xff;
  ip[1] = 0x3f;
  ip[2] = ((unsigned long) capacity + 1) / (ip[0] * ip[1]);
  if (ip[2] > 1023)
   ip[2] = 1023;
 }
 return 0;
}
