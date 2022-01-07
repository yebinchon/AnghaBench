
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int size; int data; } ;
struct TYPE_2__ {int lock; int image_update_buffer; scalar_t__ entry_created; } ;


 int image_type ;
 int img_update_realloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int packet_empty_list () ;
 scalar_t__ packetize_data (int ,int ) ;
 int pr_debug (char*) ;
 TYPE_1__ rbu_data ;
 int release_firmware (struct firmware const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void callbackfn_rbu(const struct firmware *fw, void *context)
{
 rbu_data.entry_created = 0;

 if (!fw)
  return;

 if (!fw->size)
  goto out;

 spin_lock(&rbu_data.lock);
 if (!strcmp(image_type, "mono")) {
  if (!img_update_realloc(fw->size))
   memcpy(rbu_data.image_update_buffer,
    fw->data, fw->size);
 } else if (!strcmp(image_type, "packet")) {




  packet_empty_list();
  if (packetize_data(fw->data, fw->size))





   packet_empty_list();
 } else
  pr_debug("invalid image type specified.\n");
 spin_unlock(&rbu_data.lock);
 out:
 release_firmware(fw);
}
