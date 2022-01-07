
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gf2k {int gameport; } ;


 int gameport_start_polling (int ) ;
 struct gf2k* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int gf2k_open(struct input_dev *dev)
{
 struct gf2k *gf2k = input_get_drvdata(dev);

 gameport_start_polling(gf2k->gameport);
 return 0;
}
