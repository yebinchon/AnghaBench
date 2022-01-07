
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int RID_STATS ;
 int proc_stats_rid_open (struct inode*,struct file*,int ) ;

__attribute__((used)) static int proc_stats_open( struct inode *inode, struct file *file ) {
 return proc_stats_rid_open(inode, file, RID_STATS);
}
