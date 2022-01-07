
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_group {unsigned char const group; } ;



__attribute__((used)) static unsigned char clear_group_from_set(const unsigned char groups, struct if_group *group)
{
 return (groups & ~group->group);
}
