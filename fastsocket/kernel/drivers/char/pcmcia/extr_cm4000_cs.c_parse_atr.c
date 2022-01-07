
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm4000_dev {int atr_len; int* atr; int proto; int ta1; int atr_csum; int flags; } ;


 int DEBUGP (int,struct cm4000_dev*,char*,...) ;
 int IS_ANY_T0 ;
 int IS_ANY_T1 ;
 int IS_BAD_CSUM ;
 int IS_INVREV ;
 int clear_bit (int ,int *) ;
 size_t i ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int parse_atr(struct cm4000_dev *dev)
{
 unsigned char any_t1, any_t0;
 unsigned char ch, ifno;
 int ix, done;

 DEBUGP(3, dev, "-> parse_atr: dev->atr_len = %i\n", dev->atr_len);

 if (dev->atr_len < 3) {
  DEBUGP(5, dev, "parse_atr: atr_len < 3\n");
  return 0;
 }

 if (dev->atr[0] == 0x3f)
  set_bit(IS_INVREV, &dev->flags);
 else
  clear_bit(IS_INVREV, &dev->flags);
 ix = 1;
 ifno = 1;
 ch = dev->atr[1];
 dev->proto = 0;
 any_t1 = any_t0 = done = 0;
 dev->ta1 = 0x11;
 do {
  if (ifno == 1 && (ch & 0x10)) {

   dev->ta1 = dev->atr[2];
   DEBUGP(5, dev, "Card says FiDi is 0x%.2x\n", dev->ta1);
   ifno++;
  } else if ((ifno == 2) && (ch & 0x10)) {
   dev->ta1 = 0x11;
   ifno++;
  }

  DEBUGP(5, dev, "Yi=%.2x\n", ch & 0xf0);
  ix += ((ch & 0x10) >> 4)
      +((ch & 0x20) >> 5)
      + ((ch & 0x40) >> 6)
      + ((ch & 0x80) >> 7);

  if (ch & 0x80) {
   ch = dev->atr[ix];
   if ((ch & 0x0f)) {
    any_t1 = 1;
    DEBUGP(5, dev, "card is capable of T=1\n");
   } else {
    any_t0 = 1;
    DEBUGP(5, dev, "card is capable of T=0\n");
   }
  } else
   done = 1;
 } while (!done);

 DEBUGP(5, dev, "ix=%d noHist=%d any_t1=%d\n",
       ix, dev->atr[1] & 15, any_t1);
 if (ix + 1 + (dev->atr[1] & 0x0f) + any_t1 != dev->atr_len) {
  DEBUGP(5, dev, "length error\n");
  return 0;
 }
 if (any_t0)
  set_bit(IS_ANY_T0, &dev->flags);

 if (any_t1) {
  dev->atr_csum = 0;
  if (any_t0 == 0)
   dev->proto = 1;
  set_bit(IS_ANY_T1, &dev->flags);
 }

 return 1;
}
