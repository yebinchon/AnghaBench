
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_major_name {unsigned int major; struct blk_major_name* next; int name; } ;


 int ARRAY_SIZE (struct blk_major_name**) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int block_class_lock ;
 int kfree (struct blk_major_name*) ;
 struct blk_major_name* kmalloc (int,int ) ;
 struct blk_major_name** major_names ;
 int major_to_index (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*,...) ;
 int strlcpy (int ,char const*,int) ;

int register_blkdev(unsigned int major, const char *name)
{
 struct blk_major_name **n, *p;
 int index, ret = 0;

 mutex_lock(&block_class_lock);


 if (major == 0) {
  for (index = ARRAY_SIZE(major_names)-1; index > 0; index--) {
   if (major_names[index] == ((void*)0))
    break;
  }

  if (index == 0) {
   printk("register_blkdev: failed to get major for %s\n",
          name);
   ret = -EBUSY;
   goto out;
  }
  major = index;
  ret = major;
 }

 p = kmalloc(sizeof(struct blk_major_name), GFP_KERNEL);
 if (p == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 p->major = major;
 strlcpy(p->name, name, sizeof(p->name));
 p->next = ((void*)0);
 index = major_to_index(major);

 for (n = &major_names[index]; *n; n = &(*n)->next) {
  if ((*n)->major == major)
   break;
 }
 if (!*n)
  *n = p;
 else
  ret = -EBUSY;

 if (ret < 0) {
  printk("register_blkdev: cannot get major %d for %s\n",
         major, name);
  kfree(p);
 }
out:
 mutex_unlock(&block_class_lock);
 return ret;
}
