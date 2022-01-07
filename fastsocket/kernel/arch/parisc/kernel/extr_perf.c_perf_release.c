
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ perf_enabled ;
 int perf_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int perf_release(struct inode *inode, struct file *file)
{
 spin_lock(&perf_lock);
 perf_enabled = 0;
 spin_unlock(&perf_lock);

 return 0;
}
