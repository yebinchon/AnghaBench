
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct grip {int gameport; } ;


 int gameport_start_polling (int ) ;
 struct grip* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int grip_open(struct input_dev *dev)
{
 struct grip *grip = input_get_drvdata(dev);

 gameport_start_polling(grip->gameport);
 return 0;
}
