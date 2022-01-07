
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thingie {int define; } ;



__attribute__((used)) static int dscc4_match(struct thingie *p, int value)
{
 int i;

 for (i = 0; p[i].define != -1; i++) {
  if (value == p[i].define)
   break;
 }
 if (p[i].define == -1)
  return -1;
 else
  return i;
}
