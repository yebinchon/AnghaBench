
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,int,...) ;
 int scsi_varlen_cdb_length (unsigned char*) ;

__attribute__((used)) static void print_opcode_name(unsigned char * cdbp, int cdb_len)
{
 int sa, len, cdb0;

 cdb0 = cdbp[0];
 switch(cdb0) {
 case 128:
  len = scsi_varlen_cdb_length(cdbp);
  if (len < 10) {
   printk("short opcode=0x%x command, len=%d "
          "ext_len=%d", cdb0, len, cdb_len);
   break;
  }
  sa = (cdbp[8] << 8) + cdbp[9];
  printk("cdb[0]=0x%x, sa=0x%x", cdb0, sa);
  if (len != cdb_len)
   printk(", in_cdb_len=%d, ext_len=%d", len, cdb_len);
  break;
 case 134:
 case 133:
 case 132:
 case 130:
 case 131:
 case 129:
  sa = cdbp[1] & 0x1f;
  printk("cdb[0]=0x%x, sa=0x%x", cdb0, sa);
  break;
 default:
  if (cdb0 < 0xc0)
   printk("cdb[0]=0x%x", cdb0);
  else
   printk("cdb[0]=0x%x (vendor)", cdb0);
  break;
 }
}
