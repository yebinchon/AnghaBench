
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_qps(int id, void *p, void *data)
{
 unsigned *countp = data;
 (*countp)++;
 return 0;
}
