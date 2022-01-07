
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slirp_data {int slip; } ;


 int slip_proto_read (int,void*,int,int *) ;

int slirp_user_read(int fd, void *buf, int len, struct slirp_data *pri)
{
 return slip_proto_read(fd, buf, len, &pri->slip);
}
