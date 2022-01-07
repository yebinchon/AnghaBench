
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alauda {int card_mutex; int dev; } ;


 int ALAUDA_ACK_XD_MEDIA_CHANGE ;
 int HZ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int alauda_ack_media(struct alauda *al)
{
 int ret;

 mutex_lock(&al->card_mutex);
 ret = usb_control_msg(al->dev, usb_sndctrlpipe(al->dev, 0),
   ALAUDA_ACK_XD_MEDIA_CHANGE, 0x40, 0, 1, ((void*)0), 0, HZ);
 mutex_unlock(&al->card_mutex);
 return ret;
}
