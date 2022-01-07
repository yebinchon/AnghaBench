
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int name; } ;


 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int macio_skip_device(struct device_node *np)
{
 if (strncmp(np->name, "battery", 7) == 0)
  return 1;
 if (strncmp(np->name, "escc-legacy", 11) == 0)
  return 1;
 return 0;
}
