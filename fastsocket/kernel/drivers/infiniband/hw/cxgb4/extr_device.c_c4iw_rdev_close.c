
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_rdev {int resource; } ;


 int c4iw_destroy_resource (int *) ;
 int c4iw_pblpool_destroy (struct c4iw_rdev*) ;
 int c4iw_rqtpool_destroy (struct c4iw_rdev*) ;

__attribute__((used)) static void c4iw_rdev_close(struct c4iw_rdev *rdev)
{
 c4iw_pblpool_destroy(rdev);
 c4iw_rqtpool_destroy(rdev);
 c4iw_destroy_resource(&rdev->resource);
}
