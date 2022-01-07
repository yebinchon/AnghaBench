
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_fh {int resources; } ;
struct bttv {int resources; } ;


 int VBI_RESOURCES ;
 int VIDEO_RESOURCES ;
 int disclaim_vbi_lines (struct bttv*) ;
 int disclaim_video_lines (struct bttv*) ;
 int printk (char*) ;

__attribute__((used)) static
void free_btres_lock(struct bttv *btv, struct bttv_fh *fh, int bits)
{
 if ((fh->resources & bits) != bits) {

  printk("bttv: BUG! (btres)\n");
 }
 fh->resources &= ~bits;
 btv->resources &= ~bits;

 bits = btv->resources;

 if (0 == (bits & VIDEO_RESOURCES))
  disclaim_video_lines(btv);

 if (0 == (bits & VBI_RESOURCES))
  disclaim_vbi_lines(btv);
}
