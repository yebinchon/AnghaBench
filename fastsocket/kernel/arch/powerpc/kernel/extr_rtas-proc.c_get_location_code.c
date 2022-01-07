
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct individual_sensor {int dummy; } ;


 int check_location_string (struct seq_file*,char const*) ;
 int seq_printf (struct seq_file*,char*) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void get_location_code(struct seq_file *m, struct individual_sensor *s,
  const char *loc)
{
 if (!loc || !*loc) {
  seq_printf(m, "---");
 } else {
  check_location_string(m, loc);
 }
 seq_putc(m, ' ');
}
