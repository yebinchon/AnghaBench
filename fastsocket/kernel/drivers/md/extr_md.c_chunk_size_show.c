
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ reshape_position; int chunk_sectors; int new_chunk_sectors; } ;
typedef int ssize_t ;


 scalar_t__ MaxSector ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static ssize_t
chunk_size_show(struct mddev *mddev, char *page)
{
 if (mddev->reshape_position != MaxSector &&
     mddev->chunk_sectors != mddev->new_chunk_sectors)
  return sprintf(page, "%d (%d)\n",
          mddev->new_chunk_sectors << 9,
          mddev->chunk_sectors << 9);
 return sprintf(page, "%d\n", mddev->chunk_sectors << 9);
}
