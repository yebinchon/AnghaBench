
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daemon_data {int fd; } ;



__attribute__((used)) static int daemon_open(void *data)
{
 struct daemon_data *pri = data;
 return pri->fd;
}
