
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_file_private {int dummy; } ;


 int DBG (char*) ;
 int EINVAL ;

int agpioc_protect_wrap(struct agp_file_private *priv)
{
 DBG("");

 return -EINVAL;
}
