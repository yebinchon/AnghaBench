
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 struct dentry* capifs_root ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static struct dentry *get_node(int num)
{
 char s[10];
 struct dentry *root = capifs_root;
 mutex_lock(&root->d_inode->i_mutex);
 return lookup_one_len(s, root, sprintf(s, "%d", num));
}
