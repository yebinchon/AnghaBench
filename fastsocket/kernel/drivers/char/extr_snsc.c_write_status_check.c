
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subch_data_s {int sd_wb; int sd_subch; int sd_nasid; } ;


 int ia64_sn_irtr_send (int ,int ,int ,int) ;

__attribute__((used)) static inline int
write_status_check(struct subch_data_s *sd, int count)
{
 return ia64_sn_irtr_send(sd->sd_nasid, sd->sd_subch, sd->sd_wb, count);
}
