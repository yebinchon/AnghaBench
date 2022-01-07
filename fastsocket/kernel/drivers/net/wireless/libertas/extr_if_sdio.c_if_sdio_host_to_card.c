
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lbs_private {int dnld_sent; struct if_sdio_card* card; } ;
struct if_sdio_packet {int nb; int* buffer; struct if_sdio_packet* next; } ;
struct if_sdio_card {int packet_worker; int workqueue; int lock; struct if_sdio_packet* packets; int func; } ;


 int DNLD_CMD_SENT ;
 int DNLD_DATA_SENT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int LBS_DEB_SDIO ;


 struct if_sdio_packet* kzalloc (int,int ) ;
 int lbs_deb_enter_args (int ,char*,int,int) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_sdio (char*,int) ;
 int memcpy (int*,int*,int) ;
 int queue_work (int ,int *) ;
 int sdio_align_size (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int if_sdio_host_to_card(struct lbs_private *priv,
  u8 type, u8 *buf, u16 nb)
{
 int ret;
 struct if_sdio_card *card;
 struct if_sdio_packet *packet, *cur;
 u16 size;
 unsigned long flags;

 lbs_deb_enter_args(LBS_DEB_SDIO, "type %d, bytes %d", type, nb);

 card = priv->card;

 if (nb > (65536 - sizeof(struct if_sdio_packet) - 4)) {
  ret = -EINVAL;
  goto out;
 }






 size = sdio_align_size(card->func, nb + 4);

 packet = kzalloc(sizeof(struct if_sdio_packet) + size,
   GFP_ATOMIC);
 if (!packet) {
  ret = -ENOMEM;
  goto out;
 }

 packet->next = ((void*)0);
 packet->nb = size;




 packet->buffer[0] = (nb + 4) & 0xff;
 packet->buffer[1] = ((nb + 4) >> 8) & 0xff;
 packet->buffer[2] = type;
 packet->buffer[3] = 0;

 memcpy(packet->buffer + 4, buf, nb);

 spin_lock_irqsave(&card->lock, flags);

 if (!card->packets)
  card->packets = packet;
 else {
  cur = card->packets;
  while (cur->next)
   cur = cur->next;
  cur->next = packet;
 }

 switch (type) {
 case 129:
  priv->dnld_sent = DNLD_CMD_SENT;
  break;
 case 128:
  priv->dnld_sent = DNLD_DATA_SENT;
  break;
 default:
  lbs_deb_sdio("unknown packet type %d\n", (int)type);
 }

 spin_unlock_irqrestore(&card->lock, flags);

 queue_work(card->workqueue, &card->packet_worker);

 ret = 0;

out:
 lbs_deb_leave_args(LBS_DEB_SDIO, "ret %d", ret);

 return ret;
}
