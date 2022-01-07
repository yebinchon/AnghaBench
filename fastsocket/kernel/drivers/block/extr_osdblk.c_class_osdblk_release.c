
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;


 int kfree (struct class*) ;

__attribute__((used)) static void class_osdblk_release(struct class *cls)
{
 kfree(cls);
}
