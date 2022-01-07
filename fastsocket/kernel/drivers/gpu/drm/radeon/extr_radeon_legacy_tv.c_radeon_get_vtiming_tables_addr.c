
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int RADEON_MAX_UV_ADR_MASK ;
 int RADEON_MAX_UV_ADR_SHIFT ;
 int RADEON_TABLE1_BOT_ADR_MASK ;
 int RADEON_TABLE1_BOT_ADR_SHIFT ;
 int RADEON_TABLE3_TOP_ADR_MASK ;
 int RADEON_TABLE3_TOP_ADR_SHIFT ;
 int RADEON_VCODE_TABLE_SEL_MASK ;
 int RADEON_VCODE_TABLE_SEL_SHIFT ;

__attribute__((used)) static uint16_t radeon_get_vtiming_tables_addr(uint32_t tv_uv_adr)
{
 uint16_t v_table;

 switch ((tv_uv_adr & RADEON_VCODE_TABLE_SEL_MASK) >> RADEON_VCODE_TABLE_SEL_SHIFT) {
 case 0:
  v_table = ((tv_uv_adr & RADEON_MAX_UV_ADR_MASK) >> RADEON_MAX_UV_ADR_SHIFT) * 2 + 1;
  break;
 case 1:
  v_table = ((tv_uv_adr & RADEON_TABLE1_BOT_ADR_MASK) >> RADEON_TABLE1_BOT_ADR_SHIFT) * 2 + 1;
  break;
 case 2:
  v_table = ((tv_uv_adr & RADEON_TABLE3_TOP_ADR_MASK) >> RADEON_TABLE3_TOP_ADR_SHIFT) * 2 + 1;
  break;
 default:
  v_table = 0;
  break;
 }
 return v_table;
}
