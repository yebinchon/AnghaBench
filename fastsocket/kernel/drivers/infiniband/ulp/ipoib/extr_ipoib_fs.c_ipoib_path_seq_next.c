
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef void ipoib_path_iter ;
typedef int loff_t ;


 scalar_t__ ipoib_path_iter_next (void*) ;
 int kfree (void*) ;

__attribute__((used)) static void *ipoib_path_seq_next(struct seq_file *file, void *iter_ptr,
       loff_t *pos)
{
 struct ipoib_path_iter *iter = iter_ptr;

 (*pos)++;

 if (ipoib_path_iter_next(iter)) {
  kfree(iter);
  return ((void*)0);
 }

 return iter;
}
