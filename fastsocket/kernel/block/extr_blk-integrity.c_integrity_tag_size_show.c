
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {int tag_size; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t integrity_tag_size_show(struct blk_integrity *bi, char *page)
{
 if (bi != ((void*)0))
  return sprintf(page, "%u\n", bi->tag_size);
 else
  return sprintf(page, "0\n");
}
