
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWAP (unsigned char,unsigned char,int) ;

__attribute__((used)) static void
byterev(unsigned char *val, int size)
{
 int t;

 switch (size) {
 case 2:
  SWAP(val[0], val[1], t);
  break;
 case 4:
  SWAP(val[0], val[3], t);
  SWAP(val[1], val[2], t);
  break;
 case 8:
  SWAP(val[0], val[7], t);
  SWAP(val[1], val[6], t);
  SWAP(val[2], val[5], t);
  SWAP(val[3], val[4], t);
  break;
 }
}
