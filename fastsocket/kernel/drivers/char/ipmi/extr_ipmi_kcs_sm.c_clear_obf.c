
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {int dummy; } ;


 scalar_t__ GET_STATUS_OBF (unsigned char) ;
 int read_data (struct si_sm_data*) ;

__attribute__((used)) static void clear_obf(struct si_sm_data *kcs, unsigned char status)
{
 if (GET_STATUS_OBF(status))
  read_data(kcs);
}
