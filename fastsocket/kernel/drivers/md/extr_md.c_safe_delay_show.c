
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int safemode_delay; } ;
typedef int ssize_t ;


 int HZ ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t
safe_delay_show(struct mddev *mddev, char *page)
{
 int msec = (mddev->safemode_delay*1000)/HZ;
 return sprintf(page, "%d.%03d\n", msec/1000, msec%1000);
}
