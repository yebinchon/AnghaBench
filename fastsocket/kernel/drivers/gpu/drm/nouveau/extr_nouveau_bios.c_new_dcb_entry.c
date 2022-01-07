
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcb_table {size_t entries; struct dcb_output* entry; } ;
struct dcb_output {int index; } ;


 int memset (struct dcb_output*,int ,int) ;

__attribute__((used)) static struct dcb_output *new_dcb_entry(struct dcb_table *dcb)
{
 struct dcb_output *entry = &dcb->entry[dcb->entries];

 memset(entry, 0, sizeof(struct dcb_output));
 entry->index = dcb->entries++;

 return entry;
}
