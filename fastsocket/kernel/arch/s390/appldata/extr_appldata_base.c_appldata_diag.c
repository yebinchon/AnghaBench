
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct appldata_product_id {int prod_fn; int version_nr; int release_nr; char record_nr; char mod_lvl; int prod_nr; } ;


 int appldata_asm (struct appldata_product_id*,int ,void*,int ) ;

int appldata_diag(char record_nr, u16 function, unsigned long buffer,
   u16 length, char *mod_lvl)
{
 struct appldata_product_id id = {
  .prod_nr = {0xD3, 0xC9, 0xD5, 0xE4,
          0xE7, 0xD2, 0xD9},
  .prod_fn = 0xD5D3,
  .version_nr = 0xF2F6,
  .release_nr = 0xF0F1,
 };

 id.record_nr = record_nr;
 id.mod_lvl = (mod_lvl[0]) << 8 | mod_lvl[1];
 return appldata_asm(&id, function, (void *) buffer, length);
}
