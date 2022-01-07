
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa930_trkball {int dummy; } ;
struct input_dev {int dummy; } ;


 struct pxa930_trkball* input_get_drvdata (struct input_dev*) ;
 int pxa930_trkball_disable (struct pxa930_trkball*) ;

__attribute__((used)) static void pxa930_trkball_close(struct input_dev *dev)
{
 struct pxa930_trkball *trkball = input_get_drvdata(dev);

 pxa930_trkball_disable(trkball);
}
