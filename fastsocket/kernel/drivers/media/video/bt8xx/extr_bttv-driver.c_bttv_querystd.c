
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;


 int BT848_DSTATUS ;
 int BT848_DSTATUS_NUML ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int btread (int ) ;

__attribute__((used)) static int bttv_querystd(struct file *file, void *f, v4l2_std_id *id)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 if (btread(BT848_DSTATUS) & BT848_DSTATUS_NUML)
  *id = V4L2_STD_625_50;
 else
  *id = V4L2_STD_525_60;
 return 0;
}
