
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {int dummy; } ;
typedef int loff_t ;


 int map_copy_to (struct map_info*,int ,int const*,size_t) ;

__attribute__((used)) static int mapram_write (struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen, const u_char *buf)
{
 struct map_info *map = mtd->priv;

 map_copy_to(map, to, buf, len);
 *retlen = len;
 return 0;
}
