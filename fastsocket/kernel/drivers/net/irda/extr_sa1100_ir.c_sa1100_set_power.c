
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_irda {unsigned int power; } ;


 int __sa1100_irda_set_power (struct sa1100_irda*,unsigned int) ;

__attribute__((used)) static inline int
sa1100_set_power(struct sa1100_irda *si, unsigned int state)
{
 int ret;

 ret = __sa1100_irda_set_power(si, state);
 if (ret == 0)
  si->power = state;

 return ret;
}
