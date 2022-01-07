
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc {int hw_path; struct ioc* next; } ;


 int ioc_count ;
 struct ioc* ioc_list ;

__attribute__((used)) static struct ioc * ccio_find_ioc(int hw_path)
{
 int i;
 struct ioc *ioc;

 ioc = ioc_list;
 for (i = 0; i < ioc_count; i++) {
  if (ioc->hw_path == hw_path)
   return ioc;

  ioc = ioc->next;
 }

 return ((void*)0);
}
