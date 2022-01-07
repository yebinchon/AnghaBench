
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fchs_s {int dummy; } ;
struct fc_tprlo_s {int payload_len; } ;
struct fc_prlo_s {int payload_len; } ;


 scalar_t__ FC_ELS_PRLO ;
 int be16_to_cpu (int ) ;

int
fc_logout_params_pages(struct fchs_s *fc_frame, u8 els_code)
{
 int num_pages = 0;
 struct fc_prlo_s *prlo;
 struct fc_tprlo_s *tprlo;

 if (els_code == FC_ELS_PRLO) {
  prlo = (struct fc_prlo_s *) (fc_frame + 1);
  num_pages = (be16_to_cpu(prlo->payload_len) - 4) / 16;
 } else {
  tprlo = (struct fc_tprlo_s *) (fc_frame + 1);
  num_pages = (be16_to_cpu(tprlo->payload_len) - 4) / 16;
 }
 return num_pages;
}
