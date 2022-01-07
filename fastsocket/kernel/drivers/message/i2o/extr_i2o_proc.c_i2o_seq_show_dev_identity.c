
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work32 ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct seq_file {scalar_t__ private; } ;
struct i2o_device {int dummy; } ;


 int chtostr (int *,int) ;
 int i2o_get_class_name (int ) ;
 int i2o_parm_field_get (struct i2o_device*,int,int,int **,int) ;
 int i2o_report_query_status (struct seq_file*,int,char*) ;
 int print_serial_number (struct seq_file*,int *,int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int i2o_seq_show_dev_identity(struct seq_file *seq, void *v)
{
 struct i2o_device *d = (struct i2o_device *)seq->private;
 static u32 work32[128];

 static u16 *work16 = (u16 *) work32;
 int token;

 token = i2o_parm_field_get(d, 0xF100, -1, &work32, sizeof(work32));

 if (token < 0) {
  i2o_report_query_status(seq, token, "0xF100 Device Identity");
  return 0;
 }

 seq_printf(seq, "Device Class  : %s\n", i2o_get_class_name(work16[0]));
 seq_printf(seq, "Owner TID     : %0#5x\n", work16[2]);
 seq_printf(seq, "Parent TID    : %0#5x\n", work16[3]);
 seq_printf(seq, "Vendor info   : %s\n",
     chtostr((u8 *) (work32 + 2), 16));
 seq_printf(seq, "Product info  : %s\n",
     chtostr((u8 *) (work32 + 6), 16));
 seq_printf(seq, "Description   : %s\n",
     chtostr((u8 *) (work32 + 10), 16));
 seq_printf(seq, "Product rev.  : %s\n",
     chtostr((u8 *) (work32 + 14), 8));

 seq_printf(seq, "Serial number : ");
 print_serial_number(seq, (u8 *) (work32 + 16),



       sizeof(work32) - (16 * sizeof(u32)) - 2);
 seq_printf(seq, "\n");

 return 0;
}
