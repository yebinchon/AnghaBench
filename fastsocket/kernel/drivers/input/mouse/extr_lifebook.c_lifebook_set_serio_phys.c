
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int driver_data; } ;


 int desired_serio_phys ;

__attribute__((used)) static int lifebook_set_serio_phys(const struct dmi_system_id *d)
{
 desired_serio_phys = d->driver_data;
 return 0;
}
