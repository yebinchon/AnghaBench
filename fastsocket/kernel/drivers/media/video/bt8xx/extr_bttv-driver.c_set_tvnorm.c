
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_5__ {scalar_t__ height; scalar_t__ top; } ;
struct TYPE_7__ {TYPE_1__ bounds; } ;
struct bttv_tvnorm {int adelay; int bdelay; int vbipack; int v4l2_id; int iform; TYPE_3__ cropcap; } ;
struct TYPE_6__ {int type; } ;
struct bttv {unsigned int tvnorm; int resources; TYPE_2__ c; scalar_t__ crop_start; int * crop; } ;


 int BT848_ADELAY ;
 int BT848_BDELAY ;
 int BT848_IFORM ;
 int BT848_IFORM_NORM ;
 int BT848_IFORM_XTBOTH ;
 int BT848_VBI_PACK_DEL ;
 int BT848_VBI_PACK_SIZE ;


 unsigned int BTTV_TVNORMS ;
 int BUG_ON (int) ;
 int VIDEO_RESOURCES ;
 int bt848A_set_timing (struct bttv*) ;
 int btaor (int ,int,int ) ;
 int bttv_call_all (struct bttv*,int ,int ,int ) ;
 int bttv_crop_reset (int *,unsigned int) ;
 int bttv_tda9880_setnorm (struct bttv*,int ) ;
 struct bttv_tvnorm* bttv_tvnorms ;
 int btwrite (int,int ) ;
 int core ;
 int gpio_read () ;
 scalar_t__ memcmp (TYPE_3__*,TYPE_3__*,int) ;
 int s_std ;

__attribute__((used)) static int
set_tvnorm(struct bttv *btv, unsigned int norm)
{
 const struct bttv_tvnorm *tvnorm;
 v4l2_std_id id;

 BUG_ON(norm >= BTTV_TVNORMS);
 BUG_ON(btv->tvnorm >= BTTV_TVNORMS);

 tvnorm = &bttv_tvnorms[norm];

 if (memcmp(&bttv_tvnorms[btv->tvnorm].cropcap, &tvnorm->cropcap,
      sizeof (tvnorm->cropcap))) {
  bttv_crop_reset(&btv->crop[0], norm);
  btv->crop[1] = btv->crop[0];

  if (0 == (btv->resources & VIDEO_RESOURCES)) {
   btv->crop_start = tvnorm->cropcap.bounds.top
    + tvnorm->cropcap.bounds.height;
  }
 }

 btv->tvnorm = norm;

 btwrite(tvnorm->adelay, BT848_ADELAY);
 btwrite(tvnorm->bdelay, BT848_BDELAY);
 btaor(tvnorm->iform,~(BT848_IFORM_NORM|BT848_IFORM_XTBOTH),
       BT848_IFORM);
 btwrite(tvnorm->vbipack, BT848_VBI_PACK_SIZE);
 btwrite(1, BT848_VBI_PACK_DEL);
 bt848A_set_timing(btv);

 switch (btv->c.type) {
 case 128:
 case 129:
  bttv_tda9880_setnorm(btv, gpio_read());
  break;
 }
 id = tvnorm->v4l2_id;
 bttv_call_all(btv, core, s_std, id);

 return 0;
}
