
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw {int gameport; } ;
struct input_dev {int dummy; } ;


 int gameport_start_polling (int ) ;
 struct sw* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int sw_open(struct input_dev *dev)
{
 struct sw *sw = input_get_drvdata(dev);

 gameport_start_polling(sw->gameport);
 return 0;
}
