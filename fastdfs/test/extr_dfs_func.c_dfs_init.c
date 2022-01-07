
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdfs_client_init (char const*) ;

int dfs_init(const int proccess_index, const char *conf_filename)
{
 return fdfs_client_init(conf_filename);
}
