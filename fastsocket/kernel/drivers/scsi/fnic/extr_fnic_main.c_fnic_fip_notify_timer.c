
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int dummy; } ;


 int fnic_handle_fip_timer (struct fnic*) ;

__attribute__((used)) static void fnic_fip_notify_timer(unsigned long data)
{
 struct fnic *fnic = (struct fnic *)data;

 fnic_handle_fip_timer(fnic);
}
