
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene_command {int dummy; } ;
struct ngene {int cmd_mutex; } ;


 int down (int *) ;
 int ngene_command_mutex (struct ngene*,struct ngene_command*) ;
 int up (int *) ;

int ngene_command(struct ngene *dev, struct ngene_command *com)
{
 int result;

 down(&dev->cmd_mutex);
 result = ngene_command_mutex(dev, com);
 up(&dev->cmd_mutex);
 return result;
}
