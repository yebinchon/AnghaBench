
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_hdr {int status; int sb_len_wr; scalar_t__ sbp; scalar_t__ mx_sb_len; int resid; int info; int driver_status; int host_status; int masked_status; int msg_status; } ;
struct request {int errors; int sense; scalar_t__ sense_len; int resid_len; } ;
struct bio {int dummy; } ;


 int EFAULT ;
 int SG_INFO_CHECK ;
 int blk_put_request (struct request*) ;
 int blk_rq_unmap_user (struct bio*) ;
 int copy_to_user (scalar_t__,int ,int) ;
 int driver_byte (int) ;
 int host_byte (int) ;
 int min (unsigned int,scalar_t__) ;
 int msg_byte (int) ;
 int status_byte (int) ;

__attribute__((used)) static int blk_complete_sghdr_rq(struct request *rq, struct sg_io_hdr *hdr,
     struct bio *bio)
{
 int r, ret = 0;




 hdr->status = rq->errors & 0xff;
 hdr->masked_status = status_byte(rq->errors);
 hdr->msg_status = msg_byte(rq->errors);
 hdr->host_status = host_byte(rq->errors);
 hdr->driver_status = driver_byte(rq->errors);
 hdr->info = 0;
 if (hdr->masked_status || hdr->host_status || hdr->driver_status)
  hdr->info |= SG_INFO_CHECK;
 hdr->resid = rq->resid_len;
 hdr->sb_len_wr = 0;

 if (rq->sense_len && hdr->sbp) {
  int len = min((unsigned int) hdr->mx_sb_len, rq->sense_len);

  if (!copy_to_user(hdr->sbp, rq->sense, len))
   hdr->sb_len_wr = len;
  else
   ret = -EFAULT;
 }

 r = blk_rq_unmap_user(bio);
 if (!ret)
  ret = r;
 blk_put_request(rq);

 return ret;
}
