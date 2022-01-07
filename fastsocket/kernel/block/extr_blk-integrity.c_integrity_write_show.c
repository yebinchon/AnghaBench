
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {int flags; } ;
typedef int ssize_t ;


 int INTEGRITY_FLAG_WRITE ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t integrity_write_show(struct blk_integrity *bi, char *page)
{
 return sprintf(page, "%d\n", (bi->flags & INTEGRITY_FLAG_WRITE) != 0);
}
