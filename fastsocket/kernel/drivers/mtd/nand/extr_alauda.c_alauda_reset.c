
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct alauda {int card_mutex; int bulk_out; int dev; int port; } ;


 int ALAUDA_BULK_CMD ;
 int ALAUDA_BULK_RESET_MEDIA ;
 int HZ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (int ,int ,int *,int,int *,int ) ;

__attribute__((used)) static void alauda_reset(struct alauda *al)
{
 u8 command[] = {
  ALAUDA_BULK_CMD, ALAUDA_BULK_RESET_MEDIA, 0, 0,
  0, 0, 0, 0, al->port
 };
 mutex_lock(&al->card_mutex);
 usb_bulk_msg(al->dev, al->bulk_out, command, 9, ((void*)0), HZ);
 mutex_unlock(&al->card_mutex);
}
