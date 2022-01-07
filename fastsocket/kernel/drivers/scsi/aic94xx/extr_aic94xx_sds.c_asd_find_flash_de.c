
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_flash_dir {struct asd_flash_de* dir_entry; } ;
struct asd_flash_de {int pad_size; int offs; int type; } ;


 int ENOENT ;
 int FLASH_DE_TYPE_MASK ;
 int FLASH_MAX_DIR_ENTRIES ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int asd_find_flash_de(struct asd_flash_dir *flash_dir, u32 entry_type,
        u32 *offs, u32 *size)
{
 int i;
 struct asd_flash_de *de;

 for (i = 0; i < FLASH_MAX_DIR_ENTRIES; i++) {
  u32 type = le32_to_cpu(flash_dir->dir_entry[i].type);

  type &= FLASH_DE_TYPE_MASK;
  if (type == entry_type)
   break;
 }
 if (i >= FLASH_MAX_DIR_ENTRIES)
  return -ENOENT;
 de = &flash_dir->dir_entry[i];
 *offs = le32_to_cpu(de->offs);
 *size = le32_to_cpu(de->pad_size);
 return 0;
}
