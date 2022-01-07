
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dir {int base; int ptr; } ;



int nubus_rewinddir(struct nubus_dir* dir)
{
 dir->ptr = dir->base;
 return 0;
}
