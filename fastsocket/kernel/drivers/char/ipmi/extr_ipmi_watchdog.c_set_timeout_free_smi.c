
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int set_timeout_tofree ;
 int set_timeout_wait ;

__attribute__((used)) static void set_timeout_free_smi(struct ipmi_smi_msg *msg)
{
    if (atomic_dec_and_test(&set_timeout_tofree))
     complete(&set_timeout_wait);
}
