
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm4000_dev {int flags1; int flags; } ;


 int IS_ATR_VALID ;
 int IS_CMM_ABSENT ;
 int REG_FLAGS0 (unsigned int) ;
 int REG_FLAGS1 (unsigned int) ;
 int clear_bit (int ,int *) ;
 int inb (int ) ;
 int set_bit (int ,int *) ;
 int xoutb (int,int ) ;

__attribute__((used)) static int io_detect_cm4000(unsigned int iobase, struct cm4000_dev *dev)
{


 if (inb(REG_FLAGS0(iobase)) & 8) {
  clear_bit(IS_ATR_VALID, &dev->flags);
  set_bit(IS_CMM_ABSENT, &dev->flags);
  return 0;
 }

 xoutb(dev->flags1 | 0x40, REG_FLAGS1(iobase));
 if ((inb(REG_FLAGS0(iobase)) & 8) == 0) {
  clear_bit(IS_ATR_VALID, &dev->flags);
  set_bit(IS_CMM_ABSENT, &dev->flags);
  return 0;
 }

 xoutb(dev->flags1, REG_FLAGS1(iobase));
 return 1;
}
