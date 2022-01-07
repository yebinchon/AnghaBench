
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void usage(char *argv[])
{
 printf("Usage: %s <config_file> <local_filename> " "[storage_ip:port] [store_path_index]\n", argv[0]);

}
