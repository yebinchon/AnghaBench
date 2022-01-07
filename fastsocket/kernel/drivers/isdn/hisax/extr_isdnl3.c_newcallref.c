
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OrigCallRef ;

int
newcallref(void)
{
 if (OrigCallRef == 127)
  OrigCallRef = 1;
 else
  OrigCallRef++;
 return (OrigCallRef);
}
