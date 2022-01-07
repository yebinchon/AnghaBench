
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54u_priv {int udev; } ;


 int usb_bulk_msg (int ,int ,void*,size_t,int*,int) ;
 int usb_sndbulkpipe (int ,unsigned int) ;

__attribute__((used)) static int p54u_bulk_msg(struct p54u_priv *priv, unsigned int ep,
    void *data, size_t len)
{
 int alen;
 return usb_bulk_msg(priv->udev, usb_sndbulkpipe(priv->udev, ep),
       data, len, &alen, 2000);
}
