
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {char* name; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t integrity_format_show(struct blk_integrity *bi, char *page)
{
 if (bi != ((void*)0) && bi->name != ((void*)0))
  return sprintf(page, "%s\n", bi->name);
 else
  return sprintf(page, "none\n");
}
