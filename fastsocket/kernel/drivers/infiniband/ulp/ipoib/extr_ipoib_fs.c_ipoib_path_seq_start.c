
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef void ipoib_path_iter ;
typedef int loff_t ;


 void* ipoib_path_iter_init (int ) ;
 scalar_t__ ipoib_path_iter_next (void*) ;
 int kfree (void*) ;

__attribute__((used)) static void *ipoib_path_seq_start(struct seq_file *file, loff_t *pos)
{
 struct ipoib_path_iter *iter;
 loff_t n = *pos;

 iter = ipoib_path_iter_init(file->private);
 if (!iter)
  return ((void*)0);

 while (n--) {
  if (ipoib_path_iter_next(iter)) {
   kfree(iter);
   return ((void*)0);
  }
 }

 return iter;
}
