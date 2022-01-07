
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixp2000_uengine_code {int cpu_model_bitmask; int cpu_min_revision; int cpu_max_revision; } ;


 int IXP_PRODUCT_ID ;
 int ixp2000_reg_read (int ) ;

__attribute__((used)) static int check_ixp_type(struct ixp2000_uengine_code *c)
{
 u32 product_id;
 u32 rev;

 product_id = ixp2000_reg_read(IXP_PRODUCT_ID);
 if (((product_id >> 16) & 0x1f) != 0)
  return 0;

 switch ((product_id >> 8) & 0xff) {
 default:
  return 0;
 }

 rev = product_id & 0xff;
 if (rev < c->cpu_min_revision || rev > c->cpu_max_revision)
  return 0;

 return 1;
}
