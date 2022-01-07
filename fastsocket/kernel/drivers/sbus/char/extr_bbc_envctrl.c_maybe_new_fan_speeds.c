
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_fan_control {int dummy; } ;


 int maybe_new_ambient_fan_speed (struct bbc_fan_control*) ;
 int maybe_new_cpu_fan_speed (struct bbc_fan_control*) ;
 int set_fan_speeds (struct bbc_fan_control*) ;

__attribute__((used)) static void maybe_new_fan_speeds(struct bbc_fan_control *fp)
{
 int new;

 new = maybe_new_ambient_fan_speed(fp);
 new |= maybe_new_cpu_fan_speed(fp);

 if (new)
  set_fan_speeds(fp);
}
