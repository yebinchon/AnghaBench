
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct blk_integrity {scalar_t__ name; } ;


 int bi_unsupported_name ;
 struct blk_integrity* blk_get_integrity (struct gendisk*) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

bool blk_integrity_is_initialized(struct gendisk *disk)
{
 struct blk_integrity *bi = blk_get_integrity(disk);

 return (bi && bi->name && strcmp(bi->name, bi_unsupported_name) != 0);
}
