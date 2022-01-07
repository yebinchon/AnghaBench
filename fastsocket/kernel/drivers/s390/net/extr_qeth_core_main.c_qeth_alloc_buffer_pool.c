
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_count; int entry_list; } ;
struct TYPE_4__ {TYPE_1__ init_pool; } ;
struct qeth_card {TYPE_2__ qdio; } ;
struct qeth_buffer_pool_entry {int init_list; void** elements; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_MAX_BUFFER_ELEMENTS (struct qeth_card*) ;
 int TRACE ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int kfree (struct qeth_buffer_pool_entry*) ;
 struct qeth_buffer_pool_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int qeth_free_buffer_pool (struct qeth_card*) ;

__attribute__((used)) static int qeth_alloc_buffer_pool(struct qeth_card *card)
{
 struct qeth_buffer_pool_entry *pool_entry;
 void *ptr;
 int i, j;

 QETH_DBF_TEXT(TRACE, 5, "alocpool");
 for (i = 0; i < card->qdio.init_pool.buf_count; ++i) {
  pool_entry = kzalloc(sizeof(*pool_entry), GFP_KERNEL);
  if (!pool_entry) {
   qeth_free_buffer_pool(card);
   return -ENOMEM;
  }
  for (j = 0; j < QETH_MAX_BUFFER_ELEMENTS(card); ++j) {
   ptr = (void *) __get_free_page(GFP_KERNEL);
   if (!ptr) {
    while (j > 0)
     free_page((unsigned long)
        pool_entry->elements[--j]);
    kfree(pool_entry);
    qeth_free_buffer_pool(card);
    return -ENOMEM;
   }
   pool_entry->elements[j] = ptr;
  }
  list_add(&pool_entry->init_list,
    &card->qdio.init_pool.entry_list);
 }
 return 0;
}
