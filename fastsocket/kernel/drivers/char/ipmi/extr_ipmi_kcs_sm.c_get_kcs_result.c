
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {unsigned int read_pos; int truncated; int read_data; } ;


 unsigned char IPMI_ERR_MSG_TRUNCATED ;
 unsigned char IPMI_ERR_UNSPECIFIED ;
 int memcpy (unsigned char*,int ,unsigned int) ;

__attribute__((used)) static int get_kcs_result(struct si_sm_data *kcs, unsigned char *data,
     unsigned int length)
{
 if (length < kcs->read_pos) {
  kcs->read_pos = length;
  kcs->truncated = 1;
 }

 memcpy(data, kcs->read_data, kcs->read_pos);

 if ((length >= 3) && (kcs->read_pos < 3)) {


  data[2] = IPMI_ERR_UNSPECIFIED;
  kcs->read_pos = 3;
 }
 if (kcs->truncated) {





  data[2] = IPMI_ERR_MSG_TRUNCATED;
  kcs->truncated = 0;
 }

 return kcs->read_pos;
}
