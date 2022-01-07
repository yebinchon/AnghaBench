
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmr2 {int card_type; int io; } ;


 int inb (int ) ;

__attribute__((used)) static int fmr2_product_info(struct fmr2 *dev)
{
 int n = inb(dev->io);

 n &= 0xC1;
 if (n == 0) {

  dev->card_type = 12;
  return 0;
 }

 dev->card_type = (n == 128) ? 11 : 0;
 return n;
}
