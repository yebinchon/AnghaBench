
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int dummy; } ;


 int netvsc_destroy_recv_buf (struct netvsc_device*) ;

__attribute__((used)) static void netvsc_disconnect_vsp(struct netvsc_device *net_device)
{
 netvsc_destroy_recv_buf(net_device);
}
