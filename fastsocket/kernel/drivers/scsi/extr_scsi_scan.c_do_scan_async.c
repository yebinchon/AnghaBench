
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_scan_data {int shost; } ;
typedef int async_cookie_t ;


 int do_scsi_scan_host (int ) ;
 int scsi_finish_async_scan (struct async_scan_data*) ;

__attribute__((used)) static void do_scan_async(void *_data, async_cookie_t c)
{
 struct async_scan_data *data = _data;
 do_scsi_scan_host(data->shost);
 scsi_finish_async_scan(data);
}
