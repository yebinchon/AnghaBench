
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int DMWARN (char*) ;
 scalar_t__ DM_TYPE_REQUEST_BASED ;
 int EINVAL ;
 scalar_t__ dm_get_md_type (struct mapped_device*) ;
 int dm_init_request_based_queue (struct mapped_device*) ;

int dm_setup_md_queue(struct mapped_device *md)
{
 if ((dm_get_md_type(md) == DM_TYPE_REQUEST_BASED) &&
     !dm_init_request_based_queue(md)) {
  DMWARN("Cannot initialize queue for request-based mapped device");
  return -EINVAL;
 }

 return 0;
}
