
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int max_nr_stripes; } ;
struct mddev {struct r5conf* private; } ;


 int EINVAL ;
 scalar_t__ drop_one_stripe (struct r5conf*) ;
 scalar_t__ grow_one_stripe (struct r5conf*) ;
 int md_allow_write (struct mddev*) ;

int
raid5_set_cache_size(struct mddev *mddev, int size)
{
 struct r5conf *conf = mddev->private;
 int err;

 if (size <= 16 || size > 32768)
  return -EINVAL;
 while (size < conf->max_nr_stripes) {
  if (drop_one_stripe(conf))
   conf->max_nr_stripes--;
  else
   break;
 }
 err = md_allow_write(mddev);
 if (err)
  return err;
 while (size > conf->max_nr_stripes) {
  if (grow_one_stripe(conf))
   conf->max_nr_stripes++;
  else break;
 }
 return 0;
}
