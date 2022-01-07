
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ipw_priv {int table0_addr; int table1_addr; int table2_addr; int table0_len; int table1_len; int table2_len; } ;


 int EINVAL ;
 int IPW_DEBUG_ORD (char*,...) ;



 int IPW_ORD_TABLE_ID_MASK ;
 int IPW_ORD_TABLE_VALUE_MASK ;
 int ipw_read32 (struct ipw_priv*,int) ;
 int ipw_read_indirect (struct ipw_priv*,int,void*,int) ;
 int ipw_read_reg32 (struct ipw_priv*,int) ;

__attribute__((used)) static int ipw_get_ordinal(struct ipw_priv *priv, u32 ord, void *val, u32 * len)
{
 u32 addr, field_info, field_len, field_count, total_len;

 IPW_DEBUG_ORD("ordinal = %i\n", ord);

 if (!priv || !val || !len) {
  IPW_DEBUG_ORD("Invalid argument\n");
  return -EINVAL;
 }


 if (!priv->table0_addr || !priv->table1_addr || !priv->table2_addr) {
  IPW_DEBUG_ORD("Access ordinals before initialization\n");
  return -EINVAL;
 }

 switch (IPW_ORD_TABLE_ID_MASK & ord) {
 case 130:
  ord &= IPW_ORD_TABLE_VALUE_MASK;


  if (ord > priv->table0_len) {
   IPW_DEBUG_ORD("ordinal value (%i) longer then "
          "max (%i)\n", ord, priv->table0_len);
   return -EINVAL;
  }


  if (*len < sizeof(u32)) {
   IPW_DEBUG_ORD("ordinal buffer length too small, "
          "need %zd\n", sizeof(u32));
   return -EINVAL;
  }

  IPW_DEBUG_ORD("Reading TABLE0[%i] from offset 0x%08x\n",
         ord, priv->table0_addr + (ord << 2));

  *len = sizeof(u32);
  ord <<= 2;
  *((u32 *) val) = ipw_read32(priv, priv->table0_addr + ord);
  break;

 case 129:
  ord &= IPW_ORD_TABLE_VALUE_MASK;


  if (ord > priv->table1_len) {
   IPW_DEBUG_ORD("ordinal value too long\n");
   return -EINVAL;
  }


  if (*len < sizeof(u32)) {
   IPW_DEBUG_ORD("ordinal buffer length too small, "
          "need %zd\n", sizeof(u32));
   return -EINVAL;
  }

  *((u32 *) val) =
      ipw_read_reg32(priv, (priv->table1_addr + (ord << 2)));
  *len = sizeof(u32);
  break;

 case 128:
  ord &= IPW_ORD_TABLE_VALUE_MASK;


  if (ord > priv->table2_len) {
   IPW_DEBUG_ORD("ordinal value too long\n");
   return -EINVAL;
  }


  addr = ipw_read_reg32(priv, priv->table2_addr + (ord << 3));



  field_info =
      ipw_read_reg32(priv,
       priv->table2_addr + (ord << 3) +
       sizeof(u32));


  field_len = *((u16 *) & field_info);


  field_count = *(((u16 *) & field_info) + 1);


  total_len = field_len * field_count;
  if (total_len > *len) {
   *len = total_len;
   return -EINVAL;
  }

  *len = total_len;
  if (!total_len)
   return 0;

  IPW_DEBUG_ORD("addr = 0x%08x, total_len = %i, "
         "field_info = 0x%08x\n",
         addr, total_len, field_info);
  ipw_read_indirect(priv, addr, val, total_len);
  break;

 default:
  IPW_DEBUG_ORD("Invalid ordinal!\n");
  return -EINVAL;

 }

 return 0;
}
