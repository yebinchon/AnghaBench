
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MV64x60_GPP_IO_CNTL ;
 scalar_t__ MV64x60_GPP_LEVEL_CNTL ;
 scalar_t__ MV64x60_GPP_VALUE_SET ;
 scalar_t__ MV64x60_MPP_CNTL_0 ;
 scalar_t__ MV64x60_MPP_CNTL_2 ;
 scalar_t__ bridge_base ;
 int in_le32 (int*) ;
 int out_le32 (int*,int) ;
 int udelay (int) ;

__attribute__((used)) static void prpmc2800_reset(void)
{
 u32 temp;

 udelay(5000000);

 if (bridge_base != 0) {
  temp = in_le32((u32 *)(bridge_base + MV64x60_MPP_CNTL_0));
  temp &= 0xFFFF0FFF;
  out_le32((u32 *)(bridge_base + MV64x60_MPP_CNTL_0), temp);

  temp = in_le32((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL));
  temp |= 0x00000004;
  out_le32((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL), temp);

  temp = in_le32((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL));
  temp |= 0x00000004;
  out_le32((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL), temp);

  temp = in_le32((u32 *)(bridge_base + MV64x60_MPP_CNTL_2));
  temp &= 0xFFFF0FFF;
  out_le32((u32 *)(bridge_base + MV64x60_MPP_CNTL_2), temp);

  temp = in_le32((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL));
  temp |= 0x00080000;
  out_le32((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL), temp);

  temp = in_le32((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL));
  temp |= 0x00080000;
  out_le32((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL), temp);

  out_le32((u32 *)(bridge_base + MV64x60_GPP_VALUE_SET),
    0x00080004);
 }

 for (;;);
}
