
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int broadcast_channel_allocated; int device; int bm_transaction_data; } ;


 int device_for_each_child (int ,void*,int ) ;
 int fw_device_set_broadcast_channel ;
 int fw_iso_resource_manage (struct fw_card*,int,unsigned long long,int*,int*,int,int ) ;

__attribute__((used)) static void allocate_broadcast_channel(struct fw_card *card, int generation)
{
 int channel, bandwidth = 0;

 fw_iso_resource_manage(card, generation, 1ULL << 31, &channel,
          &bandwidth, 1, card->bm_transaction_data);
 if (channel == 31) {
  card->broadcast_channel_allocated = 1;
  device_for_each_child(card->device, (void *)(long)generation,
          fw_device_set_broadcast_channel);
 }
}
