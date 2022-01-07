
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ bio_set; } ;


 int __md_stop (struct mddev*) ;
 int bioset_free (scalar_t__) ;
 int bitmap_destroy (struct mddev*) ;

void md_stop(struct mddev *mddev)
{



 __md_stop(mddev);
 bitmap_destroy(mddev);
 if (mddev->bio_set)
  bioset_free(mddev->bio_set);
}
