
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;


 TYPE_1__* parkbd_dev ;
 int parport_read_status (int ) ;

__attribute__((used)) static int parkbd_readlines(void)
{
 return (parport_read_status(parkbd_dev->port) >> 6) ^ 2;
}
