
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int r0; int fan; int r25; int r23; int r20; int r1; TYPE_1__* of_dev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_attr_case_temperature ;
 int dev_attr_cpu_temperature ;
 int device_remove_file (int *,int *) ;
 int write_reg (int ,int,int ,int) ;
 TYPE_2__ x ;

__attribute__((used)) static void
restore_regs( void )
{
 device_remove_file( &x.of_dev->dev, &dev_attr_cpu_temperature );
 device_remove_file( &x.of_dev->dev, &dev_attr_case_temperature );

 write_reg( x.fan, 0x01, x.r1, 1 );
 write_reg( x.fan, 0x20, x.r20, 1 );
 write_reg( x.fan, 0x23, x.r23, 1 );
 write_reg( x.fan, 0x25, x.r25, 1 );
 write_reg( x.fan, 0x00, x.r0, 1 );
}
