
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ NDFC_DATA ;
 struct ndfc_controller ndfc_ctrl ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static void ndfc_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
{
 struct ndfc_controller *ndfc = &ndfc_ctrl;
 uint32_t *p = (uint32_t *) buf;

 for(;len > 0; len -= 4)
  out_be32(ndfc->ndfcbase + NDFC_DATA, *p++);
}
