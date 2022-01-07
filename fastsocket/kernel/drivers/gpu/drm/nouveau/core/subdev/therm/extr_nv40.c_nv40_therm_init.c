
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int _nouveau_therm_init (struct nouveau_object*) ;
 int nv40_sensor_setup (struct nouveau_therm*) ;

__attribute__((used)) static int
nv40_therm_init(struct nouveau_object *object)
{
 struct nouveau_therm *therm = (void *)object;

 nv40_sensor_setup(therm);

 return _nouveau_therm_init(object);
}
