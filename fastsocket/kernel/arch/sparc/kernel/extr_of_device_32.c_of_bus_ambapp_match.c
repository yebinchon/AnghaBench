
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int name; } ;


 int strcmp (int ,char*) ;

__attribute__((used)) static int of_bus_ambapp_match(struct device_node *np)
{
 return !strcmp(np->name, "ambapp");
}
