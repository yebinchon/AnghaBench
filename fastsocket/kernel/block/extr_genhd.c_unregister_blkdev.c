
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_major_name {unsigned int major; struct blk_major_name* next; int name; } ;


 int WARN_ON (int) ;
 int block_class_lock ;
 int kfree (struct blk_major_name*) ;
 struct blk_major_name** major_names ;
 int major_to_index (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (int ,char const*) ;

void unregister_blkdev(unsigned int major, const char *name)
{
 struct blk_major_name **n;
 struct blk_major_name *p = ((void*)0);
 int index = major_to_index(major);

 mutex_lock(&block_class_lock);
 for (n = &major_names[index]; *n; n = &(*n)->next)
  if ((*n)->major == major)
   break;
 if (!*n || strcmp((*n)->name, name)) {
  WARN_ON(1);
 } else {
  p = *n;
  *n = p->next;
 }
 mutex_unlock(&block_class_lock);
 kfree(p);
}
