
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hif_device_usb {int regout_submitted; } ;


 int ath9k_hif_usb_dealloc_reg_in_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_dealloc_rx_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_dealloc_tx_urbs (struct hif_device_usb*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void ath9k_hif_usb_dealloc_urbs(struct hif_device_usb *hif_dev)
{
 usb_kill_anchored_urbs(&hif_dev->regout_submitted);
 ath9k_hif_usb_dealloc_reg_in_urbs(hif_dev);
 ath9k_hif_usb_dealloc_tx_urbs(hif_dev);
 ath9k_hif_usb_dealloc_rx_urbs(hif_dev);
}
