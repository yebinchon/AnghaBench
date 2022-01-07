
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;
 int rt2800_init_rfcsr_305x_soc (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_30xx (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_3290 (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_3352 (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_3390 (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_3572 (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_5390 (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_5392 (struct rt2x00_dev*) ;
 int rt2800_init_rfcsr_5592 (struct rt2x00_dev*) ;
 scalar_t__ rt2800_is_305x_soc (struct rt2x00_dev*) ;

__attribute__((used)) static void rt2800_init_rfcsr(struct rt2x00_dev *rt2x00dev)
{
 if (rt2800_is_305x_soc(rt2x00dev)) {
  rt2800_init_rfcsr_305x_soc(rt2x00dev);
  return;
 }

 switch (rt2x00dev->chip.rt) {
 case 137:
 case 136:
 case 135:
  rt2800_init_rfcsr_30xx(rt2x00dev);
  break;
 case 134:
  rt2800_init_rfcsr_3290(rt2x00dev);
  break;
 case 133:
  rt2800_init_rfcsr_3352(rt2x00dev);
  break;
 case 132:
  rt2800_init_rfcsr_3390(rt2x00dev);
  break;
 case 131:
  rt2800_init_rfcsr_3572(rt2x00dev);
  break;
 case 130:
  rt2800_init_rfcsr_5390(rt2x00dev);
  break;
 case 129:
  rt2800_init_rfcsr_5392(rt2x00dev);
  break;
 case 128:
  rt2800_init_rfcsr_5592(rt2x00dev);
  break;
 }
}
