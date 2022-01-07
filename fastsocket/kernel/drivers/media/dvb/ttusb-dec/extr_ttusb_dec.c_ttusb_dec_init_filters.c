
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb_dec {int filter_info_list_lock; int filter_info_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ttusb_dec_init_filters(struct ttusb_dec *dec)
{
 INIT_LIST_HEAD(&dec->filter_info_list);
 spin_lock_init(&dec->filter_info_list_lock);
}
