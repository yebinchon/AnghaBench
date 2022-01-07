
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ sync_speed_min; } ;
typedef int ssize_t ;


 int speed_min (struct mddev*) ;
 int sprintf (char*,char*,int,char*) ;

__attribute__((used)) static ssize_t
sync_min_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%d (%s)\n", speed_min(mddev),
         mddev->sync_speed_min ? "local": "system");
}
