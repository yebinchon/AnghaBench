
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip_data {int slip; } ;


 int slip_proto_write (int,void*,int,int *) ;

int slip_user_write(int fd, void *buf, int len, struct slip_data *pri)
{
 return slip_proto_write(fd, buf, len, &pri->slip);
}
