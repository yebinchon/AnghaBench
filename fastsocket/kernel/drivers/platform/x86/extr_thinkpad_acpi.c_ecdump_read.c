
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;


 int acpi_ec_read (int,int *) ;
 int * ecdump_regs ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int ecdump_read(struct seq_file *m)
{
 int i, j;
 u8 v;

 seq_printf(m, "EC      "
         " +00 +01 +02 +03 +04 +05 +06 +07"
         " +08 +09 +0a +0b +0c +0d +0e +0f\n");
 for (i = 0; i < 256; i += 16) {
  seq_printf(m, "EC 0x%02x:", i);
  for (j = 0; j < 16; j++) {
   if (!acpi_ec_read(i + j, &v))
    break;
   if (v != ecdump_regs[i + j])
    seq_printf(m, " *%02x", v);
   else
    seq_printf(m, "  %02x", v);
   ecdump_regs[i + j] = v;
  }
  seq_putc(m, '\n');
  if (j != 16)
   break;
 }
 return 0;
}
