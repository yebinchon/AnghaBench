
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;


 int kfree (struct property*) ;

__attribute__((used)) static void free_property(struct property *np)
{
 kfree(np);
}
