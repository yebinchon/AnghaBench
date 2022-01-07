
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {unsigned long new_chunk_sectors; unsigned long chunk_sectors; scalar_t__ reshape_position; TYPE_1__* pers; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* check_reshape ) (struct mddev*) ;} ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MaxSector ;
 unsigned long simple_strtoul (char const*,char**,int) ;
 int stub1 (struct mddev*) ;

__attribute__((used)) static ssize_t
chunk_size_store(struct mddev *mddev, const char *buf, size_t len)
{
 char *e;
 unsigned long n = simple_strtoul(buf, &e, 10);

 if (!*buf || (*e && *e != '\n'))
  return -EINVAL;

 if (mddev->pers) {
  int err;
  if (mddev->pers->check_reshape == ((void*)0))
   return -EBUSY;
  mddev->new_chunk_sectors = n >> 9;
  err = mddev->pers->check_reshape(mddev);
  if (err) {
   mddev->new_chunk_sectors = mddev->chunk_sectors;
   return err;
  }
 } else {
  mddev->new_chunk_sectors = n >> 9;
  if (mddev->reshape_position == MaxSector)
   mddev->chunk_sectors = n >> 9;
 }
 return len;
}
