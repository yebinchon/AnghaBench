
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_filedata {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (int,int ) ;

__attribute__((used)) static int ipath_open(struct inode *in, struct file *fp)
{

 fp->private_data = kzalloc(sizeof(struct ipath_filedata), GFP_KERNEL);
 return fp->private_data ? 0 : -ENOMEM;
}
