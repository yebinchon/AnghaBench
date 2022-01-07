
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int drive; } ;


 int pg_identify (struct pg*,int) ;
 int pg_reset (struct pg*) ;

__attribute__((used)) static int pg_probe(struct pg *dev)
{
 if (dev->drive == -1) {
  for (dev->drive = 0; dev->drive <= 1; dev->drive++)
   if (!pg_reset(dev))
    return pg_identify(dev, 1);
 } else {
  if (!pg_reset(dev))
   return pg_identify(dev, 1);
 }
 return -1;
}
