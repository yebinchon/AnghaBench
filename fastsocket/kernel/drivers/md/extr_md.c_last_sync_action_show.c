
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {char* last_sync_action; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
last_sync_action_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%s\n", mddev->last_sync_action);
}
