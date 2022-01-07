
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int dummy; } ;


 int ibmvfc_dbg (struct ibmvfc_host*,char*) ;
 int ibmvfc_send_crq (struct ibmvfc_host*,int,int ) ;

__attribute__((used)) static int ibmvfc_send_crq_init(struct ibmvfc_host *vhost)
{
 ibmvfc_dbg(vhost, "Sending CRQ init\n");
 return ibmvfc_send_crq(vhost, 0xC001000000000000LL, 0);
}
