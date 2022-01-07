
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ENODEV ;
 unsigned int speedstep_get_frequency (int ) ;
 int speedstep_processor ;

__attribute__((used)) static unsigned int speedstep_get(unsigned int cpu)
{
 if (cpu)
  return -ENODEV;
 return speedstep_get_frequency(speedstep_processor);
}
