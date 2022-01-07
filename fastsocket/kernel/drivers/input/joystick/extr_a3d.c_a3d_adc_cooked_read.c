
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {struct a3d* port_data; } ;
struct a3d {int* axes; int buttons; } ;



__attribute__((used)) static int a3d_adc_cooked_read(struct gameport *gameport, int *axes, int *buttons)
{
 struct a3d *a3d = gameport->port_data;
 int i;

 for (i = 0; i < 4; i++)
  axes[i] = (a3d->axes[i] < 254) ? a3d->axes[i] : -1;
 *buttons = a3d->buttons;
 return 0;
}
