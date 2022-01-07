
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct a3d {int gameport; } ;


 int gameport_start_polling (int ) ;
 struct a3d* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int a3d_open(struct input_dev *dev)
{
 struct a3d *a3d = input_get_drvdata(dev);

 gameport_start_polling(a3d->gameport);
 return 0;
}
