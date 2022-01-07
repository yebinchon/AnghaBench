
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int mut; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void ucma_lock_files(struct ucma_file *file1, struct ucma_file *file2)
{

 if (file1 < file2) {
  mutex_lock(&file1->mut);
  mutex_lock(&file2->mut);
 } else {
  mutex_lock(&file2->mut);
  mutex_lock(&file1->mut);
 }
}
