
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int BT848_PLL_F_HI ;
 int BT848_PLL_F_LO ;
 unsigned char BT848_PLL_X ;
 int BT848_PLL_XCI ;
 int btwrite (unsigned char,int ) ;

__attribute__((used)) static void set_pll_freq(struct bttv *btv, unsigned int fin, unsigned int fout)
{
 unsigned char fl, fh, fi;


 fin/=4;
 fout/=4;

 fout*=12;
 fi=fout/fin;

 fout=(fout%fin)*256;
 fh=fout/fin;

 fout=(fout%fin)*256;
 fl=fout/fin;

 btwrite(fl, BT848_PLL_F_LO);
 btwrite(fh, BT848_PLL_F_HI);
 btwrite(fi|BT848_PLL_X, BT848_PLL_XCI);
}
