
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {char* full_name; } ;
struct device_attribute {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct device {TYPE_1__ archdata; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t devspec_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct device_node *of_node = dev->archdata.of_node;

 return sprintf(buf, "%s\n", of_node ? of_node->full_name : "none");
}
