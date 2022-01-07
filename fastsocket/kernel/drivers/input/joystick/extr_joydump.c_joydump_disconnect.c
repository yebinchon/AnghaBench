
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;


 int gameport_close (struct gameport*) ;

__attribute__((used)) static void joydump_disconnect(struct gameport *gameport)
{
 gameport_close(gameport);
}
