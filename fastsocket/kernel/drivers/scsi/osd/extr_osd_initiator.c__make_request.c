
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct _osd_io_info {scalar_t__ bio; } ;
typedef int gfp_t ;


 int ENODEV ;
 int ENOMEM ;
 struct request* ERR_PTR (int ) ;
 int READ ;
 int WRITE ;
 int __GFP_WAIT ;
 struct request* blk_get_request (struct request_queue*,int ,int) ;
 struct request* blk_make_request (struct request_queue*,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct request *_make_request(struct request_queue *q, bool has_write,
         struct _osd_io_info *oii, gfp_t flags)
{
 if (oii->bio)
  return blk_make_request(q, oii->bio, flags);
 else {
  struct request *req;

  req = blk_get_request(q, has_write ? WRITE : READ, flags);
  if (unlikely(!req))
   return (flags & __GFP_WAIT) ? ERR_PTR(-ENODEV) :
            ERR_PTR(-ENOMEM);

  return req;
 }
}
