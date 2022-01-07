
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int image_type ;
 int scnprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static ssize_t read_rbu_image_type(struct file *filp, struct kobject *kobj,
       struct bin_attribute *bin_attr,
       char *buffer, loff_t pos, size_t count)
{
 int size = 0;
 if (!pos)
  size = scnprintf(buffer, count, "%s\n", image_type);
 return size;
}
