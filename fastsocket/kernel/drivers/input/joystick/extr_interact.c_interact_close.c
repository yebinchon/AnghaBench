
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interact {int gameport; } ;
struct input_dev {int dummy; } ;


 int gameport_stop_polling (int ) ;
 struct interact* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void interact_close(struct input_dev *dev)
{
 struct interact *interact = input_get_drvdata(dev);

 gameport_stop_polling(interact->gameport);
}
