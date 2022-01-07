
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
 scalar_t__ PCI_VENDOR_ID_BROCADE ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
mpt_get_product_name(u16 vendor, u16 device, u8 revision, char *prod_name)
{
 char *product_str = ((void*)0);

 if (vendor == PCI_VENDOR_ID_BROCADE) {
  switch (device)
  {
  case 136:
   switch (revision)
   {
   case 0x00:
    product_str = "BRE040 A0";
    break;
   case 0x01:
    product_str = "BRE040 A1";
    break;
   default:
    product_str = "BRE040";
    break;
   }
   break;
  }
  goto out;
 }

 switch (device)
 {
 case 142:
  product_str = "LSIFC909 B1";
  break;
 case 141:
  product_str = "LSIFC919 B0";
  break;
 case 139:
  product_str = "LSIFC929 B0";
  break;
 case 140:
  if (revision < 0x80)
   product_str = "LSIFC919X A0";
  else
   product_str = "LSIFC919XL A1";
  break;
 case 138:
  if (revision < 0x80)
   product_str = "LSIFC929X A0";
  else
   product_str = "LSIFC929XL A1";
  break;
 case 137:
  product_str = "LSIFC939X A1";
  break;
 case 135:
  product_str = "LSIFC949X A1";
  break;
 case 136:
  switch (revision)
  {
  case 0x00:
   product_str = "LSIFC949E A0";
   break;
  case 0x01:
   product_str = "LSIFC949E A1";
   break;
  default:
   product_str = "LSIFC949E";
   break;
  }
  break;
 case 133:
  switch (revision)
  {
  case 0x00:
   product_str = "LSI53C1030 A0";
   break;
  case 0x01:
   product_str = "LSI53C1030 B0";
   break;
  case 0x03:
   product_str = "LSI53C1030 B1";
   break;
  case 0x07:
   product_str = "LSI53C1030 B2";
   break;
  case 0x08:
   product_str = "LSI53C1030 C0";
   break;
  case 0x80:
   product_str = "LSI53C1030T A0";
   break;
  case 0x83:
   product_str = "LSI53C1030T A2";
   break;
  case 0x87:
   product_str = "LSI53C1030T A3";
   break;
  case 0xc1:
   product_str = "LSI53C1020A A1";
   break;
  default:
   product_str = "LSI53C1030";
   break;
  }
  break;
 case 134:
  switch (revision)
  {
  case 0x03:
   product_str = "LSI53C1035 A2";
   break;
  case 0x04:
   product_str = "LSI53C1035 B0";
   break;
  default:
   product_str = "LSI53C1035";
   break;
  }
  break;
 case 132:
  switch (revision)
  {
  case 0x00:
   product_str = "LSISAS1064 A1";
   break;
  case 0x01:
   product_str = "LSISAS1064 A2";
   break;
  case 0x02:
   product_str = "LSISAS1064 A3";
   break;
  case 0x03:
   product_str = "LSISAS1064 A4";
   break;
  default:
   product_str = "LSISAS1064";
   break;
  }
  break;
 case 131:
  switch (revision)
  {
  case 0x00:
   product_str = "LSISAS1064E A0";
   break;
  case 0x01:
   product_str = "LSISAS1064E B0";
   break;
  case 0x02:
   product_str = "LSISAS1064E B1";
   break;
  case 0x04:
   product_str = "LSISAS1064E B2";
   break;
  case 0x08:
   product_str = "LSISAS1064E B3";
   break;
  default:
   product_str = "LSISAS1064E";
   break;
  }
  break;
 case 130:
  switch (revision)
  {
  case 0x00:
   product_str = "LSISAS1068 A0";
   break;
  case 0x01:
   product_str = "LSISAS1068 B0";
   break;
  case 0x02:
   product_str = "LSISAS1068 B1";
   break;
  default:
   product_str = "LSISAS1068";
   break;
  }
  break;
 case 129:
  switch (revision)
  {
  case 0x00:
   product_str = "LSISAS1068E A0";
   break;
  case 0x01:
   product_str = "LSISAS1068E B0";
   break;
  case 0x02:
   product_str = "LSISAS1068E B1";
   break;
  case 0x04:
   product_str = "LSISAS1068E B2";
   break;
  case 0x08:
   product_str = "LSISAS1068E B3";
   break;
  default:
   product_str = "LSISAS1068E";
   break;
  }
  break;
 case 128:
  switch (revision)
  {
  case 0x00:
   product_str = "LSISAS1078 A0";
   break;
  case 0x01:
   product_str = "LSISAS1078 B0";
   break;
  case 0x02:
   product_str = "LSISAS1078 C0";
   break;
  case 0x03:
   product_str = "LSISAS1078 C1";
   break;
  case 0x04:
   product_str = "LSISAS1078 C2";
   break;
  default:
   product_str = "LSISAS1078";
   break;
  }
  break;
 }

 out:
 if (product_str)
  sprintf(prod_name, "%s", product_str);
}
