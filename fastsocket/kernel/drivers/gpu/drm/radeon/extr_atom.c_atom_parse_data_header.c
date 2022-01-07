
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u16 ;
struct atom_context {int data_table; int bios; } ;


 void* CU16 (int) ;
 int CU8 (int) ;

bool atom_parse_data_header(struct atom_context *ctx, int index,
       uint16_t * size, uint8_t * frev, uint8_t * crev,
       uint16_t * data_start)
{
 int offset = index * 2 + 4;
 int idx = CU16(ctx->data_table + offset);
 u16 *mdt = (u16 *)(ctx->bios + ctx->data_table + 4);

 if (!mdt[index])
  return 0;

 if (size)
  *size = CU16(idx);
 if (frev)
  *frev = CU8(idx + 2);
 if (crev)
  *crev = CU8(idx + 3);
 *data_start = idx;
 return 1;
}
