
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int MAX_PATH_SIZE ;
 int binlog_compress_index ;
 int calc_compress_until_binlog_index () ;
 int compress_binlog_file (char*) ;
 int g_binlog_index ;
 int get_binlog_readable_filename_ex (int,char*) ;
 int write_to_binlog_index (int) ;

int fdfs_binlog_compress_func(void *args)
{
 char full_filename[MAX_PATH_SIZE];
    int until_index;
    int bindex;
    int result;

    if (binlog_compress_index >= g_binlog_index)
    {
        return 0;
    }

    until_index = calc_compress_until_binlog_index();
    for (bindex = binlog_compress_index; bindex < until_index;
            bindex++)
    {
        get_binlog_readable_filename_ex(bindex, full_filename);
        result = compress_binlog_file(full_filename);
        if (!(result == 0 || result == ENOENT))
        {
            break;
        }

        binlog_compress_index = bindex + 1;
        write_to_binlog_index(g_binlog_index);
    }

    return 0;
}
