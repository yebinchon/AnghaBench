
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_2__ {int cur_irq; int cur_ioport; } ;


 int sony_pic_enable (struct acpi_device*,int ,int ) ;
 TYPE_1__ spic_dev ;

__attribute__((used)) static int sony_pic_resume(struct acpi_device *device)
{
 sony_pic_enable(device, spic_dev.cur_ioport, spic_dev.cur_irq);
 return 0;
}
