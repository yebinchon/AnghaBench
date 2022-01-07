
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_cell {struct hash_cell* uuid; struct hash_cell* name; } ;


 int kfree (struct hash_cell*) ;

__attribute__((used)) static void free_cell(struct hash_cell *hc)
{
 if (hc) {
  kfree(hc->name);
  kfree(hc->uuid);
  kfree(hc);
 }
}
