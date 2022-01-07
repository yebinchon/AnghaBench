
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct asus_oled_packet {int dummy; } ;
struct asus_oled_dev {size_t buf_size; scalar_t__ pack_mode; int buf; TYPE_1__* udev; int pic_mode; } ;
struct TYPE_3__ {int dev; } ;


 size_t ASUS_OLED_PACKET_BUF_SIZE ;
 int ASUS_OLED_ROLL ;
 int ASUS_OLED_STATIC ;
 int GFP_KERNEL ;
 scalar_t__ PACK_MODE_G1 ;
 scalar_t__ PACK_MODE_G50 ;
 int dev_err (int *,char*) ;
 int kfree (struct asus_oled_packet*) ;
 struct asus_oled_packet* kzalloc (int,int ) ;
 int send_packets (TYPE_1__*,struct asus_oled_packet*,int ,int ,size_t) ;
 int send_packets_g50 (TYPE_1__*,struct asus_oled_packet*,int ) ;

__attribute__((used)) static void send_data(struct asus_oled_dev *odev)
{
 size_t packet_num = odev->buf_size / ASUS_OLED_PACKET_BUF_SIZE;
 struct asus_oled_packet *packet;

 packet = kzalloc(sizeof(struct asus_oled_packet), GFP_KERNEL);

 if (!packet) {
  dev_err(&odev->udev->dev, "out of memory\n");
  return;
 }

 if (odev->pack_mode == PACK_MODE_G1) {



  if (odev->pic_mode == ASUS_OLED_ROLL)
   send_packets(odev->udev, packet, odev->buf,
         ASUS_OLED_STATIC, 2);


  if (odev->pic_mode != ASUS_OLED_ROLL && packet_num > 2)
   packet_num = 2;

  send_packets(odev->udev, packet, odev->buf,
        odev->pic_mode, packet_num);
 } else if (odev->pack_mode == PACK_MODE_G50) {
  send_packets_g50(odev->udev, packet, odev->buf);
 }

 kfree(packet);
}
