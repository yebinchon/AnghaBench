
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
struct desc_ptr {int address; int size; } ;


 int seq_printf (struct seq_file*,char*,char*,int ) ;

__attribute__((used)) static void print_desc_ptr(char *str, struct seq_file *seq, struct desc_ptr dt)
{
 seq_printf(seq, " %s\t: %016llx\n", str, (u64)(dt.address | dt.size));
}
