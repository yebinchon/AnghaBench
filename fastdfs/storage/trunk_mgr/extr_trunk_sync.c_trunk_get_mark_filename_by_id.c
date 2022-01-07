
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_server_port ;
 char* trunk_get_mark_filename_by_id_and_port (char const*,int ,char*,int const) ;

__attribute__((used)) static char *trunk_get_mark_filename_by_id(const char *storage_id,
 char *full_filename, const int filename_size)
{
 return trunk_get_mark_filename_by_id_and_port(storage_id, g_server_port, full_filename, filename_size);

}
