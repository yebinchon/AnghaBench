
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_hdlc_buf_list {int spinlock; } ;


 int memset (struct n_hdlc_buf_list*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void n_hdlc_buf_list_init(struct n_hdlc_buf_list *list)
{
 memset(list, 0, sizeof(*list));
 spin_lock_init(&list->spinlock);
}
