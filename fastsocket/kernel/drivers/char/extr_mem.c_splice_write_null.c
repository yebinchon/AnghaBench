
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int pipe_to_null ;
 int splice_from_pipe (struct pipe_inode_info*,struct file*,int *,size_t,unsigned int,int ) ;

__attribute__((used)) static ssize_t splice_write_null(struct pipe_inode_info *pipe,struct file *out,
     loff_t *ppos, size_t len, unsigned int flags)
{
 return splice_from_pipe(pipe, out, ppos, len, flags, pipe_to_null);
}
