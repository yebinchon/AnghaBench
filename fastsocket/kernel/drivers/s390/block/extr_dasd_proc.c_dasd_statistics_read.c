
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_profile_info {int dasd_io_reqs; int dasd_io_sects; int dasd_io_nr_req; int dasd_io_time3; int dasd_io_time2ps; int dasd_io_time2; int dasd_io_time1; int dasd_io_timps; int dasd_io_times; int dasd_io_secs; } ;
typedef int off_t ;


 int dasd_calc_metrics (char*,char**,int ,int,int*,unsigned long) ;
 struct dasd_profile_info dasd_global_profile_data ;
 int dasd_global_profile_level ;
 char* dasd_statistics_array (char*,int ,int) ;
 unsigned long sprintf (char*,char*,...) ;

__attribute__((used)) static int
dasd_statistics_read(char *page, char **start, off_t off,
       int count, int *eof, void *data)
{
 unsigned long len;
 len = sprintf(page, "Statistics are not activated in this kernel\n");

 return dasd_calc_metrics(page, start, off, count, eof, len);
}
