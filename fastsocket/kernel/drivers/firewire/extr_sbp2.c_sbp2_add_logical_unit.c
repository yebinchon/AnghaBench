
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_target {int lu_list; int dont_block; } ;
struct TYPE_2__ {int length; struct sbp2_logical_unit* callback_data; int address_callback; } ;
struct sbp2_logical_unit {int lun; int has_sdev; int blocked; int link; int work; int orb_list; scalar_t__ retries; int login_id; struct sbp2_target* tgt; TYPE_1__ address_handler; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INVALID_LOGIN_ID ;
 scalar_t__ fw_core_add_address_handler (TYPE_1__*,int *) ;
 int fw_high_memory_region ;
 int kfree (struct sbp2_logical_unit*) ;
 struct sbp2_logical_unit* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sbp2_login ;
 int sbp2_status_write ;

__attribute__((used)) static int sbp2_add_logical_unit(struct sbp2_target *tgt, int lun_entry)
{
 struct sbp2_logical_unit *lu;

 lu = kmalloc(sizeof(*lu), GFP_KERNEL);
 if (!lu)
  return -ENOMEM;

 lu->address_handler.length = 0x100;
 lu->address_handler.address_callback = sbp2_status_write;
 lu->address_handler.callback_data = lu;

 if (fw_core_add_address_handler(&lu->address_handler,
     &fw_high_memory_region) < 0) {
  kfree(lu);
  return -ENOMEM;
 }

 lu->tgt = tgt;
 lu->lun = lun_entry & 0xffff;
 lu->login_id = INVALID_LOGIN_ID;
 lu->retries = 0;
 lu->has_sdev = 0;
 lu->blocked = 0;
 ++tgt->dont_block;
 INIT_LIST_HEAD(&lu->orb_list);
 INIT_DELAYED_WORK(&lu->work, sbp2_login);

 list_add_tail(&lu->link, &tgt->lu_list);
 return 0;
}
