
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_page_vec {int length; unsigned long data_size; scalar_t__* pages; } ;


 int iser_err (char*,int,unsigned long) ;

__attribute__((used)) static void iser_dump_page_vec(struct iser_page_vec *page_vec)
{
 int i;

 iser_err("page vec length %d data size %d\n",
   page_vec->length, page_vec->data_size);
 for (i = 0; i < page_vec->length; i++)
  iser_err("%d %lx\n",i,(unsigned long)page_vec->pages[i]);
}
