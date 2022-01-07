
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int state; } ;
typedef enum ibmvfc_host_state { ____Placeholder_ibmvfc_host_state } ibmvfc_host_state ;


 int EINVAL ;


__attribute__((used)) static int ibmvfc_set_host_state(struct ibmvfc_host *vhost,
      enum ibmvfc_host_state state)
{
 int rc = 0;

 switch (vhost->state) {
 case 128:
  rc = -EINVAL;
  break;
 default:
  vhost->state = state;
  break;
 };

 return rc;
}
