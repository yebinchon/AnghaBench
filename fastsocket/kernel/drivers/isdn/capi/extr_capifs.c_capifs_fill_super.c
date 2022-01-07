
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; int s_root; int * s_op; int s_magic; } ;
struct inode {int i_ino; int i_mode; int i_nlink; int * i_fop; int * i_op; int i_ctime; int i_atime; int i_mtime; } ;


 int CAPIFS_SUPER_MAGIC ;
 int CURRENT_TIME ;
 int ENOMEM ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IWUSR ;
 int S_IXUGO ;
 int capifs_root ;
 int capifs_sops ;
 int d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int printk (char*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static int
capifs_fill_super(struct super_block *s, void *data, int silent)
{
 struct inode * inode;

 s->s_blocksize = 1024;
 s->s_blocksize_bits = 10;
 s->s_magic = CAPIFS_SUPER_MAGIC;
 s->s_op = &capifs_sops;
 s->s_time_gran = 1;

 inode = new_inode(s);
 if (!inode)
  goto fail;
 inode->i_ino = 1;
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
 inode->i_mode = S_IFDIR | S_IRUGO | S_IXUGO | S_IWUSR;
 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 inode->i_nlink = 2;

 capifs_root = s->s_root = d_alloc_root(inode);
 if (s->s_root)
  return 0;

 printk("capifs: get root dentry failed\n");
 iput(inode);
fail:
 return -ENOMEM;
}
