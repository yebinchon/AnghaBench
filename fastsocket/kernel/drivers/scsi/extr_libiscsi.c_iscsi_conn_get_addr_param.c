
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;




 int EINVAL ;



 int * be16_to_cpu (int ) ;
 int sprintf (char*,char*,int *) ;

int iscsi_conn_get_addr_param(struct sockaddr_storage *addr,
         enum iscsi_param param, char *buf)
{
 struct sockaddr_in6 *sin6 = ((void*)0);
 struct sockaddr_in *sin = ((void*)0);
 int len;

 switch (addr->ss_family) {
 case 132:
  sin = (struct sockaddr_in *)addr;
  break;
 case 131:
  sin6 = (struct sockaddr_in6 *)addr;
  break;
 default:
  return -EINVAL;
 }

 switch (param) {
 case 129:
 case 130:
  if (sin)
   len = sprintf(buf, "%pI4\n", &sin->sin_addr.s_addr);
  else
   len = sprintf(buf, "%pI6\n", &sin6->sin6_addr);
  break;
 case 128:
  if (sin)
   len = sprintf(buf, "%hu\n", be16_to_cpu(sin->sin_port));
  else
   len = sprintf(buf, "%hu\n",
          be16_to_cpu(sin6->sin6_port));
  break;
 default:
  return -EINVAL;
 }

 return len;
}
