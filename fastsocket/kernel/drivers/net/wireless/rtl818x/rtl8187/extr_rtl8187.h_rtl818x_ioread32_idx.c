
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
typedef int u32 ;
struct rtl8187_priv {int io_mutex; TYPE_1__* io_dmabuf; int udev; } ;
typedef int __le32 ;
struct TYPE_2__ {int bits32; } ;


 int HZ ;
 int RTL8187_REQT_READ ;
 int RTL8187_REQ_GET_REG ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int ,unsigned long,int,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static inline u32 rtl818x_ioread32_idx(struct rtl8187_priv *priv,
           __le32 *addr, u8 idx)
{
 __le32 val;

 mutex_lock(&priv->io_mutex);
 usb_control_msg(priv->udev, usb_rcvctrlpipe(priv->udev, 0),
   RTL8187_REQ_GET_REG, RTL8187_REQT_READ,
   (unsigned long)addr, idx & 0x03,
   &priv->io_dmabuf->bits32, sizeof(val), HZ / 2);

 val = priv->io_dmabuf->bits32;
 mutex_unlock(&priv->io_mutex);

 return le32_to_cpu(val);
}
