
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_entry {scalar_t__ generation; int host; } ;


 scalar_t__ get_hpsb_generation (int ) ;

__attribute__((used)) static inline int hpsb_node_entry_valid(struct node_entry *ne)
{
 return ne->generation == get_hpsb_generation(ne->host);
}
