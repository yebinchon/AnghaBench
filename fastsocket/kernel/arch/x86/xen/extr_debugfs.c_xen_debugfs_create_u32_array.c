
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int dummy; } ;
struct array_data {unsigned int elements; int * array; } ;
typedef int mode_t ;


 int GFP_KERNEL ;
 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,struct array_data*,int *) ;
 struct array_data* kmalloc (int,int ) ;
 int u32_array_fops ;

struct dentry *xen_debugfs_create_u32_array(const char *name, mode_t mode,
         struct dentry *parent,
         u32 *array, unsigned elements)
{
 struct array_data *data = kmalloc(sizeof(*data), GFP_KERNEL);

 if (data == ((void*)0))
  return ((void*)0);

 data->array = array;
 data->elements = elements;

 return debugfs_create_file(name, mode, parent, data, &u32_array_fops);
}
