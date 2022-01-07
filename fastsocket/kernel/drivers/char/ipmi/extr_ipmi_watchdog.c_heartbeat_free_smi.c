
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int heartbeat_tofree ;
 int heartbeat_wait ;

__attribute__((used)) static void heartbeat_free_smi(struct ipmi_smi_msg *msg)
{
    if (atomic_dec_and_test(&heartbeat_tofree))
     complete(&heartbeat_wait);
}
