
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mtd_info {struct alauda* priv; } ;
struct alauda_sg_request {int ** urb; int comp; } ;
struct alauda {int port; int card_mutex; int bulk_in; int dev; int bulk_out; TYPE_1__* card; } ;
typedef int loff_t ;
struct TYPE_2__ {int blockshift; } ;


 int ALAUDA_BULK_CMD ;
 int ALAUDA_BULK_ERASE_BLOCK ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_NOIO ;
 int PBA_HI (int) ;
 int PBA_LO (int) ;
 int PBA_ZONE (int) ;
 int TIMEOUT ;
 int alauda_complete ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int *,int ,int ,int*,int,int ,int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int usb_submit_urb (int *,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int alauda_erase_block(struct mtd_info *mtd, loff_t ofs)
{
 struct alauda_sg_request sg;
 struct alauda *al = mtd->priv;
 u32 pba = ofs >> al->card->blockshift;
 u8 command[] = {
  ALAUDA_BULK_CMD, ALAUDA_BULK_ERASE_BLOCK, PBA_HI(pba),
  PBA_ZONE(pba), 0, PBA_LO(pba), 0x02, 0, al->port
 };
 u8 buf[2];
 int i, err;

 for (i=0; i<2; i++)
  sg.urb[i] = ((void*)0);

 err = -ENOMEM;
 for (i=0; i<2; i++) {
  sg.urb[i] = usb_alloc_urb(0, GFP_NOIO);
  if (!sg.urb[i])
   goto out;
 }
 init_completion(&sg.comp);
 usb_fill_bulk_urb(sg.urb[0], al->dev, al->bulk_out, command, 9,
   alauda_complete, ((void*)0));
 usb_fill_bulk_urb(sg.urb[1], al->dev, al->bulk_in, buf, 2,
   alauda_complete, &sg.comp);

 mutex_lock(&al->card_mutex);
 for (i=0; i<2; i++) {
  err = usb_submit_urb(sg.urb[i], GFP_NOIO);
  if (err)
   goto cancel;
 }
 if (!wait_for_completion_timeout(&sg.comp, TIMEOUT)) {
  err = -ETIMEDOUT;
cancel:
  for (i=0; i<2; i++) {
   usb_kill_urb(sg.urb[i]);
  }
 }
 mutex_unlock(&al->card_mutex);

out:
 usb_free_urb(sg.urb[0]);
 usb_free_urb(sg.urb[1]);
 return err;
}
