
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_highlevel {int host_info_list; int host_info_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int rwlock_init (int *) ;

__attribute__((used)) static inline void hpsb_init_highlevel(struct hpsb_highlevel *hl)
{
 rwlock_init(&hl->host_info_lock);
 INIT_LIST_HEAD(&hl->host_info_list);
}
