
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {scalar_t__ errors; TYPE_1__* rq_disk; } ;
struct hd_i_struct {int special_op; int recalibrate; } ;
struct TYPE_2__ {struct hd_i_struct* private_data; } ;


 int BBD_ERR ;
 int EIO ;
 scalar_t__ MAX_ERRORS ;
 int RECAL_FREQ ;
 int RESET_FREQ ;
 int TRK0_ERR ;
 int hd_end_request_cur (int ) ;
 int hd_error ;
 struct request* hd_req ;
 int reset ;

__attribute__((used)) static void bad_rw_intr(void)
{
 struct request *req = hd_req;

 if (req != ((void*)0)) {
  struct hd_i_struct *disk = req->rq_disk->private_data;
  if (++req->errors >= MAX_ERRORS || (hd_error & BBD_ERR)) {
   hd_end_request_cur(-EIO);
   disk->special_op = disk->recalibrate = 1;
  } else if (req->errors % RESET_FREQ == 0)
   reset = 1;
  else if ((hd_error & TRK0_ERR) || req->errors % RECAL_FREQ == 0)
   disk->special_op = disk->recalibrate = 1;

 }
}
