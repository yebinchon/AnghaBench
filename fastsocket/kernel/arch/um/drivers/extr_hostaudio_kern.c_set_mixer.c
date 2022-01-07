
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mixer ;

__attribute__((used)) static int set_mixer(char *name, int *add)
{
 mixer = name;
 return 0;
}
