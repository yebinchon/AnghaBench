
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int DST_CA_DEBUG ;
 int THIS_MODULE ;
 int dprintk (int ,int ,int,char*) ;
 int module_put (int ) ;
 int verbose ;

__attribute__((used)) static int dst_ca_release(struct inode *inode, struct file *file)
{
 dprintk(verbose, DST_CA_DEBUG, 1, " Device closed.");
 module_put(THIS_MODULE);

 return 0;
}
