
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cobra {int gameport; } ;


 int gameport_start_polling (int ) ;
 struct cobra* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int cobra_open(struct input_dev *dev)
{
 struct cobra *cobra = input_get_drvdata(dev);

 gameport_start_polling(cobra->gameport);
 return 0;
}
