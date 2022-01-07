
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union skb_entry {unsigned short link; } ;



__attribute__((used)) static void skb_entry_set_link(union skb_entry *list, unsigned short id)
{
 list->link = id;
}
