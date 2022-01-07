
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ering_entry {scalar_t__ err_mask; } ;
struct ata_ering {size_t cursor; struct ata_ering_entry* ring; } ;



__attribute__((used)) static struct ata_ering_entry *ata_ering_top(struct ata_ering *ering)
{
 struct ata_ering_entry *ent = &ering->ring[ering->cursor];

 if (ent->err_mask)
  return ent;
 return ((void*)0);
}
