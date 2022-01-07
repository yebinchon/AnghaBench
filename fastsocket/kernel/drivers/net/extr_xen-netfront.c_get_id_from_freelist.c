
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union skb_entry {unsigned int link; } ;



__attribute__((used)) static unsigned short get_id_from_freelist(unsigned *head,
        union skb_entry *list)
{
 unsigned int id = *head;
 *head = list[id].link;
 return id;
}
