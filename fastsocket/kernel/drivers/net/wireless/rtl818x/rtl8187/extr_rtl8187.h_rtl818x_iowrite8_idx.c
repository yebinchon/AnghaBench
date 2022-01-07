
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
struct rtl8187_priv {int io_mutex; TYPE_1__* io_dmabuf; int udev; } ;
struct TYPE_2__ {int bits8; } ;


 int HZ ;
 int RTL8187_REQT_WRITE ;
 int RTL8187_REQ_SET_REG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int ,unsigned long,int,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static inline void rtl818x_iowrite8_idx(struct rtl8187_priv *priv,
     u8 *addr, u8 val, u8 idx)
{
 mutex_lock(&priv->io_mutex);

 priv->io_dmabuf->bits8 = val;
 usb_control_msg(priv->udev, usb_sndctrlpipe(priv->udev, 0),
   RTL8187_REQ_SET_REG, RTL8187_REQT_WRITE,
   (unsigned long)addr, idx & 0x03,
   &priv->io_dmabuf->bits8, sizeof(val), HZ / 2);

 mutex_unlock(&priv->io_mutex);
}
