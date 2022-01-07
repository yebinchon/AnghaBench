
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLIP_MAX ;

__attribute__((used)) static inline int
plip_searchfor(int list[], int a)
{
 int i;
 for (i = 0; i < PLIP_MAX && list[i] != -1; i++) {
  if (list[i] == a) return 1;
 }
 return 0;
}
