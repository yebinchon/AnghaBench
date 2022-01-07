
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {int vlan; } ;



__attribute__((used)) static inline unsigned int vlan_prio(const struct l2t_entry *e)
{
 return e->vlan >> 13;
}
