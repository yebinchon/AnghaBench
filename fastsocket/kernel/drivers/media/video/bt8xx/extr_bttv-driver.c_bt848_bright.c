
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int bright; } ;


 int BT848_BRIGHT ;
 int btwrite (int,int ) ;

__attribute__((used)) static void bt848_bright(struct bttv *btv, int bright)
{
 int value;


 btv->bright = bright;


 value = (bright >> 8) - 128;
 btwrite(value & 0xff, BT848_BRIGHT);
}
