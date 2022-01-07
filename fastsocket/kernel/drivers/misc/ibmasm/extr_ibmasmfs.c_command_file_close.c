
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ibmasmfs_command_data {scalar_t__ command; } ;
struct file {struct ibmasmfs_command_data* private_data; } ;


 int command_put (scalar_t__) ;
 int kfree (struct ibmasmfs_command_data*) ;

__attribute__((used)) static int command_file_close(struct inode *inode, struct file *file)
{
 struct ibmasmfs_command_data *command_data = file->private_data;

 if (command_data->command)
  command_put(command_data->command);

 kfree(command_data);
 return 0;
}
