
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int EINVAL ;
 int g_fdfs_network_timeout ;
 int tcpsendfile (int,char*,int const,int ,int *) ;

int uploadFileCallback(void *arg, const int64_t file_size, int sock)
{
 int64_t total_send_bytes;
 char *filename;

 if (arg == ((void*)0))
 {
  return EINVAL;
 }

 filename = (char *)arg;
 return tcpsendfile(sock, filename, file_size, g_fdfs_network_timeout, &total_send_bytes);

}
