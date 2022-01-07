
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ top; } ;
struct TYPE_4__ {TYPE_1__ bounds; } ;
struct bttv_tvnorm {TYPE_2__ cropcap; } ;
struct bttv {size_t tvnorm; scalar_t__ crop_start; } ;


 int BT848_E_CROP ;
 int BT848_E_VDELAY_LO ;
 int BT848_O_CROP ;
 int BT848_O_VDELAY_LO ;
 int btread (int ) ;
 struct bttv_tvnorm* bttv_tvnorms ;
 int btwrite (int,int ) ;

__attribute__((used)) static void
disclaim_video_lines(struct bttv *btv)
{
 const struct bttv_tvnorm *tvnorm;
 u8 crop;

 tvnorm = &bttv_tvnorms[btv->tvnorm];
 btv->crop_start = tvnorm->cropcap.bounds.top
  + tvnorm->cropcap.bounds.height;





 crop = btread(BT848_E_CROP) | 0xc0;
 btwrite(crop, BT848_E_CROP);
 btwrite(0xfe, BT848_E_VDELAY_LO);
 btwrite(crop, BT848_O_CROP);
 btwrite(0xfe, BT848_O_VDELAY_LO);
}
