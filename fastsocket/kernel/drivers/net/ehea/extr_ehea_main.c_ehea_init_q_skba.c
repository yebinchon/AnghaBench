
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_q_skb_arr {int len; scalar_t__ os_skbs; scalar_t__ index; int arr; } ;


 int ENOMEM ;
 int memset (int ,int ,int) ;
 int vmalloc (int) ;

__attribute__((used)) static int ehea_init_q_skba(struct ehea_q_skb_arr *q_skba, int max_q_entries)
{
 int arr_size = sizeof(void *) * max_q_entries;

 q_skba->arr = vmalloc(arr_size);
 if (!q_skba->arr)
  return -ENOMEM;

 memset(q_skba->arr, 0, arr_size);

 q_skba->len = max_q_entries;
 q_skba->index = 0;
 q_skba->os_skbs = 0;

 return 0;
}
