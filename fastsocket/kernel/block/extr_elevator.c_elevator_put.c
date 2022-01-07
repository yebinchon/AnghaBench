
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_type {int elevator_owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void elevator_put(struct elevator_type *e)
{
 module_put(e->elevator_owner);
}
