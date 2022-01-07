
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void check_location(struct seq_file *m, const char *c)
{
 switch (c[0]) {
  case 130:
   seq_printf(m, "Planar #%c", c[1]);
   break;
  case 133:
   seq_printf(m, "CPU #%c", c[1]);
   break;
  case 132:
   seq_printf(m, "Fan #%c", c[1]);
   break;
  case 129:
   seq_printf(m, "Rack #%c", c[1]);
   break;
  case 128:
   seq_printf(m, "Voltage #%c", c[1]);
   break;
  case 131:
   seq_printf(m, "LCD #%c", c[1]);
   break;
  case '.':
   seq_printf(m, "- %c", c[1]);
   break;
  default:
   seq_printf(m, "Unknown location");
   break;
 }
}
