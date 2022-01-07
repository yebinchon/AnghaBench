
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;



__attribute__((used)) static int
simscsi_biosparam (struct scsi_device *sdev, struct block_device *n,
  sector_t capacity, int ip[])
{
 ip[0] = 64;
 ip[1] = 32;
 ip[2] = capacity >> 11;
 return 0;
}
