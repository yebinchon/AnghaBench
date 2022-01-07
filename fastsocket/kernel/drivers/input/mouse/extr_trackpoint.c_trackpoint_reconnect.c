
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 scalar_t__ trackpoint_start_protocol (struct psmouse*,int *) ;
 scalar_t__ trackpoint_sync (struct psmouse*) ;

__attribute__((used)) static int trackpoint_reconnect(struct psmouse *psmouse)
{
 if (trackpoint_start_protocol(psmouse, ((void*)0)))
  return -1;

 if (trackpoint_sync(psmouse))
  return -1;

 return 0;
}
