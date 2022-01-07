
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int be32_to_cpu (int) ;
 char hex_asc_hi (int) ;
 char hex_asc_lo (int) ;

void pnp_eisa_id_to_string(u32 id, char *str)
{
 id = be32_to_cpu(id);
 str[0] = 'A' + ((id >> 26) & 0x3f) - 1;
 str[1] = 'A' + ((id >> 21) & 0x1f) - 1;
 str[2] = 'A' + ((id >> 16) & 0x1f) - 1;
 str[3] = hex_asc_hi(id >> 8);
 str[4] = hex_asc_lo(id >> 8);
 str[5] = hex_asc_hi(id);
 str[6] = hex_asc_lo(id);
 str[7] = '\0';
}
