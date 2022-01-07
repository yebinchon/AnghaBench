
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alauda {int card_mutex; int dev; } ;


 int ALAUDA_GET_XD_MEDIA_STATUS ;
 int HZ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int alauda_get_media_status(struct alauda *al, void *buf)
{
 int ret;

 mutex_lock(&al->card_mutex);
 ret = usb_control_msg(al->dev, usb_rcvctrlpipe(al->dev, 0),
   ALAUDA_GET_XD_MEDIA_STATUS, 0xc0, 0, 1, buf, 2, HZ);
 mutex_unlock(&al->card_mutex);
 return ret;
}
