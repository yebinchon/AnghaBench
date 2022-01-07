
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int saturation; int opt_uv_ratio; } ;


 int BT848_E_CONTROL ;
 int BT848_O_CONTROL ;
 int BT848_SAT_U_LO ;
 int BT848_SAT_V_LO ;
 int btaor (int,int,int ) ;
 int btwrite (int,int ) ;

__attribute__((used)) static void bt848_sat(struct bttv *btv, int color)
{
 int val_u,val_v,hibits;

 btv->saturation = color;


 val_u = ((color * btv->opt_uv_ratio) / 50) >> 7;
 val_v = (((color * (100 - btv->opt_uv_ratio) / 50) >>7)*180L)/254;
 hibits = (val_u >> 7) & 2;
 hibits |= (val_v >> 8) & 1;
 btwrite(val_u & 0xff, BT848_SAT_U_LO);
 btwrite(val_v & 0xff, BT848_SAT_V_LO);
 btaor(hibits, ~3, BT848_E_CONTROL);
 btaor(hibits, ~3, BT848_O_CONTROL);
}
