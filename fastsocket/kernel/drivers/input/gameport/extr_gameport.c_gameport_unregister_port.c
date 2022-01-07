
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;


 int gameport_destroy_port (struct gameport*) ;
 int gameport_disconnect_port (struct gameport*) ;
 int gameport_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gameport_unregister_port(struct gameport *gameport)
{
 mutex_lock(&gameport_mutex);
 gameport_disconnect_port(gameport);
 gameport_destroy_port(gameport);
 mutex_unlock(&gameport_mutex);
}
