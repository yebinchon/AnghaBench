
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EBADRQC ;
 int gru_create_new_context (unsigned long) ;
 int gru_dbg (int ,char*,struct file*,unsigned int,unsigned long) ;
 int gru_dump_chiplet_request (unsigned long) ;
 int gru_get_config_info (unsigned long) ;
 int gru_get_exception_detail (unsigned long) ;
 int gru_get_gseg_statistics (unsigned long) ;
 int gru_handle_user_call_os (unsigned long) ;
 int gru_ktest (unsigned long) ;
 int gru_set_context_option (unsigned long) ;
 int gru_user_flush_tlb (unsigned long) ;
 int gru_user_unload_context (unsigned long) ;
 int grudev ;

__attribute__((used)) static long gru_file_unlocked_ioctl(struct file *file, unsigned int req,
        unsigned long arg)
{
 int err = -EBADRQC;

 gru_dbg(grudev, "file %p, req 0x%x, 0x%lx\n", file, req, arg);

 switch (req) {
 case 137:
  err = gru_create_new_context(arg);
  break;
 case 132:
  err = gru_set_context_option(arg);
  break;
 case 129:
  err = gru_get_exception_detail(arg);
  break;
 case 128:
  err = gru_user_unload_context(arg);
  break;
 case 130:
  err = gru_user_flush_tlb(arg);
  break;
 case 131:
  err = gru_handle_user_call_os(arg);
  break;
 case 134:
  err = gru_get_gseg_statistics(arg);
  break;
 case 133:
  err = gru_ktest(arg);
  break;
 case 135:
  err = gru_get_config_info(arg);
  break;
 case 136:
  err = gru_dump_chiplet_request(arg);
  break;
 }
 return err;
}
