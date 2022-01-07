
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int DST_CA_DEBUG ;
 int THIS_MODULE ;
 int dprintk (int ,int ,int,char*,struct file*) ;
 int try_module_get (int ) ;
 int verbose ;

__attribute__((used)) static int dst_ca_open(struct inode *inode, struct file *file)
{
 dprintk(verbose, DST_CA_DEBUG, 1, " Device opened [%p] ", file);
 try_module_get(THIS_MODULE);

 return 0;
}
