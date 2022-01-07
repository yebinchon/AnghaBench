
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cobra {int gameport; } ;


 int gameport_stop_polling (int ) ;
 struct cobra* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void cobra_close(struct input_dev *dev)
{
 struct cobra *cobra = input_get_drvdata(dev);

 gameport_stop_polling(cobra->gameport);
}
