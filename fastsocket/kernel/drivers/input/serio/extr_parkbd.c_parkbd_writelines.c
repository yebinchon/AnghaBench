
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;


 TYPE_1__* parkbd_dev ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static void parkbd_writelines(int data)
{
 parport_write_control(parkbd_dev->port, (~data & 3) | 0x10);
}
