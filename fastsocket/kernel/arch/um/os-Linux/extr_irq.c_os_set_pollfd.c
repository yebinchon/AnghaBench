
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;


 TYPE_1__* pollfds ;

void os_set_pollfd(int i, int fd)
{
 pollfds[i].fd = fd;
}
