
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int dev_t ;


 int md_alloc (int ,int *) ;

__attribute__((used)) static struct kobject *md_probe(dev_t dev, int *part, void *data)
{
 md_alloc(dev, ((void*)0));
 return ((void*)0);
}
