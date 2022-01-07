
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work32 ;
typedef int u32 ;
struct seq_file {scalar_t__ private; } ;
struct i2o_controller {int exec; } ;


 int i2o_parm_field_get (int ,int,int,int**,int) ;
 int i2o_report_query_status (struct seq_file*,int,char*) ;
 int seq_printf (struct seq_file*,char*,int,int,int,int) ;

__attribute__((used)) static int i2o_seq_show_driver_store(struct seq_file *seq, void *v)
{
 struct i2o_controller *c = (struct i2o_controller *)seq->private;
 u32 work32[8];
 int token;

 token =
     i2o_parm_field_get(c->exec, 0x0004, -1, &work32, sizeof(work32));
 if (token < 0) {
  i2o_report_query_status(seq, token, "0x0004 Driver Store");
  return 0;
 }

 seq_printf(seq, "Module limit  : %d\n"
     "Module count  : %d\n"
     "Current space : %d kB\n"
     "Free space    : %d kB\n",
     work32[0], work32[1], work32[2] >> 10, work32[3] >> 10);

 return 0;
}
