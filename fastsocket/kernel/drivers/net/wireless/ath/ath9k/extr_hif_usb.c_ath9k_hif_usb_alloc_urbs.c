
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hif_device_usb {int regout_submitted; } ;


 int ENOMEM ;
 scalar_t__ ath9k_hif_usb_alloc_reg_in_urbs (struct hif_device_usb*) ;
 scalar_t__ ath9k_hif_usb_alloc_rx_urbs (struct hif_device_usb*) ;
 scalar_t__ ath9k_hif_usb_alloc_tx_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_dealloc_rx_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_dealloc_tx_urbs (struct hif_device_usb*) ;
 int init_usb_anchor (int *) ;

__attribute__((used)) static int ath9k_hif_usb_alloc_urbs(struct hif_device_usb *hif_dev)
{

 init_usb_anchor(&hif_dev->regout_submitted);


 if (ath9k_hif_usb_alloc_tx_urbs(hif_dev) < 0)
  goto err;


 if (ath9k_hif_usb_alloc_rx_urbs(hif_dev) < 0)
  goto err_rx;


 if (ath9k_hif_usb_alloc_reg_in_urbs(hif_dev) < 0)
  goto err_reg;

 return 0;
err_reg:
 ath9k_hif_usb_dealloc_rx_urbs(hif_dev);
err_rx:
 ath9k_hif_usb_dealloc_tx_urbs(hif_dev);
err:
 return -ENOMEM;
}
