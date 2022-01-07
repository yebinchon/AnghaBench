
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int parallel_resync; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
sync_force_parallel_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%d\n", mddev->parallel_resync);
}
