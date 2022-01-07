
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_combo {TYPE_1__* wacom; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct input_dev* dev; } ;



__attribute__((used)) static struct input_dev * get_input_dev(struct wacom_combo *wcombo)
{
 return wcombo->wacom->dev;
}
