
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa930_rotary {int dummy; } ;
struct input_dev {int dummy; } ;


 int clear_sbcr (struct pxa930_rotary*) ;
 struct pxa930_rotary* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int pxa930_rotary_open(struct input_dev *dev)
{
 struct pxa930_rotary *r = input_get_drvdata(dev);

 clear_sbcr(r);

 return 0;
}
