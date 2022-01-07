
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {int dummy; } ;
struct si_sm_data {int obf_timeout; int ibf_timeout; scalar_t__ truncated; scalar_t__ error_retries; scalar_t__ read_pos; scalar_t__ orig_write_count; scalar_t__ write_count; scalar_t__ write_pos; struct si_sm_io* io; int state; } ;


 int IBF_RETRY_TIMEOUT ;
 int KCS_IDLE ;
 int OBF_RETRY_TIMEOUT ;

__attribute__((used)) static unsigned int init_kcs_data(struct si_sm_data *kcs,
      struct si_sm_io *io)
{
 kcs->state = KCS_IDLE;
 kcs->io = io;
 kcs->write_pos = 0;
 kcs->write_count = 0;
 kcs->orig_write_count = 0;
 kcs->read_pos = 0;
 kcs->error_retries = 0;
 kcs->truncated = 0;
 kcs->ibf_timeout = IBF_RETRY_TIMEOUT;
 kcs->obf_timeout = OBF_RETRY_TIMEOUT;


 return 2;
}
