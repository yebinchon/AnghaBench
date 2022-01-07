
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int active_stripes; } ;
struct mddev {struct r5conf* private; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
stripe_cache_active_show(struct mddev *mddev, char *page)
{
 struct r5conf *conf = mddev->private;
 if (conf)
  return sprintf(page, "%d\n", atomic_read(&conf->active_stripes));
 else
  return 0;
}
