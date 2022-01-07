
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_group {int pgpaths; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct priority_group* kzalloc (int,int ) ;

__attribute__((used)) static struct priority_group *alloc_priority_group(void)
{
 struct priority_group *pg;

 pg = kzalloc(sizeof(*pg), GFP_KERNEL);

 if (pg)
  INIT_LIST_HEAD(&pg->pgpaths);

 return pg;
}
