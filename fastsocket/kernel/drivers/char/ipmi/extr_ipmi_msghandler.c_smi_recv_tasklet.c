
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipmi_smi_t ;


 int handle_new_recv_msgs (int ) ;

__attribute__((used)) static void smi_recv_tasklet(unsigned long val)
{
 handle_new_recv_msgs((ipmi_smi_t) val);
}
