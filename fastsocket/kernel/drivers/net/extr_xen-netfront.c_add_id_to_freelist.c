
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union skb_entry {int dummy; } skb_entry ;


 int skb_entry_set_link (union skb_entry*,unsigned int) ;

__attribute__((used)) static void add_id_to_freelist(unsigned *head, union skb_entry *list,
          unsigned short id)
{
 skb_entry_set_link(&list[id], *head);
 *head = id;
}
