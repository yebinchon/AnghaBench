
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_v4 {char guard; int protocol; scalar_t__ dout_xfer_len; int subprotocol; } ;
struct request_queue {int dummy; } ;





 int EINVAL ;
 int READ ;
 int WRITE ;

__attribute__((used)) static int
bsg_validate_sgv4_hdr(struct request_queue *q, struct sg_io_v4 *hdr, int *rw)
{
 int ret = 0;

 if (hdr->guard != 'Q')
  return -EINVAL;

 switch (hdr->protocol) {
 case 130:
  switch (hdr->subprotocol) {
  case 129:
  case 128:
   break;
  default:
   ret = -EINVAL;
  }
  break;
 default:
  ret = -EINVAL;
 }

 *rw = hdr->dout_xfer_len ? WRITE : READ;
 return ret;
}
