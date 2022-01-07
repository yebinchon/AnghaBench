
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_list; } ;
struct TYPE_4__ {TYPE_1__ in_buf_pool; } ;
struct qeth_card {TYPE_2__ qdio; } ;
struct qeth_buffer_pool_entry {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void qeth_put_buffer_pool_entry(struct qeth_card *card,
  struct qeth_buffer_pool_entry *entry)
{
 list_add_tail(&entry->list, &card->qdio.in_buf_pool.entry_list);
}
