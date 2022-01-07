
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int bypass_threshold; } ;
struct mddev {struct r5conf* private; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
raid5_show_preread_threshold(struct mddev *mddev, char *page)
{
 struct r5conf *conf = mddev->private;
 if (conf)
  return sprintf(page, "%d\n", conf->bypass_threshold);
 else
  return 0;
}
