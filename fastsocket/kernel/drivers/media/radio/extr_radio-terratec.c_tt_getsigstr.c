
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terratec {int io; } ;


 int inb (int ) ;

__attribute__((used)) static int tt_getsigstr(struct terratec *tt)
{
 if (inb(tt->io) & 2)
  return 0;
 return 1;
}
