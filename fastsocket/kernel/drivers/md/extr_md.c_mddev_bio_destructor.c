
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int bio_set; } ;
struct bio {int dummy; } ;


 int bio_free (struct bio*,int ) ;

__attribute__((used)) static void mddev_bio_destructor(struct bio *bio)
{
 struct mddev *mddev, **mddevp;

 mddevp = (void*)bio;
 mddev = mddevp[-1];

 bio_free(bio, mddev->bio_set);
}
