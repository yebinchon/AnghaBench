
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u32 ;
struct seq_file {struct acpi_ec* private; } ;
struct acpi_ec {scalar_t__ global_lock; scalar_t__ data_addr; scalar_t__ command_addr; scalar_t__ gpe; } ;


 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int acpi_ec_read_info(struct seq_file *seq, void *offset)
{
 struct acpi_ec *ec = seq->private;

 if (!ec)
  goto end;

 seq_printf(seq, "gpe:\t\t\t0x%02x\n", (u32) ec->gpe);
 seq_printf(seq, "ports:\t\t\t0x%02x, 0x%02x\n",
     (unsigned)ec->command_addr, (unsigned)ec->data_addr);
 seq_printf(seq, "use global lock:\t%s\n",
     ec->global_lock ? "yes" : "no");
      end:
 return 0;
}
