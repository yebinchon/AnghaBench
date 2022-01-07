
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_idrs(int id, void *p, void *data)
{
 int *countp = data;

 *countp = *countp + 1;
 return 0;
}
