
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ resync_min; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
min_sync_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%llu\n",
         (unsigned long long)mddev->resync_min);
}
