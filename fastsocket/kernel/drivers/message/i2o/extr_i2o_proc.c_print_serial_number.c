
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct seq_file {int dummy; } ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int print_serial_number(struct seq_file *seq, u8 * serialno, int max_len)
{
 int i;
 switch (serialno[0]) {
 case 137:
  seq_printf(seq, "0x");
  for (i = 0; i < serialno[1]; i++) {
   seq_printf(seq, "%02X", serialno[2 + i]);
  }
  break;

 case 138:
  if (serialno[1] < ' ') {

   max_len =
       (max_len < serialno[1]) ? max_len : serialno[1];
   serialno[1 + max_len] = '\0';


   seq_printf(seq, "%s", &serialno[2]);
  } else {

   for (i = 0; i < serialno[1]; i++) {
    seq_printf(seq, "%c", serialno[2 + i]);
   }
  }
  break;

 case 131:
  seq_printf(seq, "UNICODE Format.  Can't Display\n");
  break;

 case 133:
  seq_printf(seq,
      "LAN-48 MAC address @ %02X:%02X:%02X:%02X:%02X:%02X",
      serialno[2], serialno[3],
      serialno[4], serialno[5], serialno[6], serialno[7]);
  break;

 case 128:

  seq_printf(seq, "WAN Access Address");
  break;


 case 132:

  seq_printf(seq,
      "LAN-64 MAC address @ [?:%02X:%02X:?] %02X:%02X:%02X:%02X:%02X:%02X",
      serialno[8], serialno[9],
      serialno[2], serialno[3],
      serialno[4], serialno[5], serialno[6], serialno[7]);
  break;

 case 136:
  seq_printf(seq,
      "DDM: Tid=%03Xh, Rsvd=%04Xh, OrgId=%04Xh",
      *(u16 *) & serialno[2],
      *(u16 *) & serialno[4], *(u16 *) & serialno[6]);
  break;

 case 134:
 case 135:

  seq_printf(seq,
      "IEEE NodeName(hi,lo)=(%08Xh:%08Xh), PortName(hi,lo)=(%08Xh:%08Xh)\n",
      *(u32 *) & serialno[2],
      *(u32 *) & serialno[6],
      *(u32 *) & serialno[10], *(u32 *) & serialno[14]);
  break;

 case 130:
 case 129:
 default:
  seq_printf(seq, "Unknown data format (0x%02x)", serialno[0]);
  break;
 }

 return 0;
}
