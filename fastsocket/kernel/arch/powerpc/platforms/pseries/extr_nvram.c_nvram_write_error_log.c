
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_seconds () ;
 int last_unread_rtas_event ;
 int nvram_write_os_partition (int *,char*,int,unsigned int,unsigned int) ;
 int rtas_log_partition ;

int nvram_write_error_log(char * buff, int length,
                          unsigned int err_type, unsigned int error_log_cnt)
{
 int rc = nvram_write_os_partition(&rtas_log_partition, buff, length,
      err_type, error_log_cnt);
 if (!rc)
  last_unread_rtas_event = get_seconds();
 return rc;
}
