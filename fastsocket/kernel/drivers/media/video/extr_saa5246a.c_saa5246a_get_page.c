
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pgbuf; int start; int end; scalar_t__ buffer; } ;
typedef TYPE_1__ vtx_pagereq_t ;
struct saa5246a_device {scalar_t__* is_searching; } ;


 int COLUMN (int) ;
 int COMMAND_END ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_DAUS ;
 int POS_HEADER_END ;
 int POS_HEADER_START ;
 int POS_TIME_END ;
 int POS_TIME_START ;
 int R8_ACTIVE_CHAPTER_4 ;
 int R8_DO_NOT_CLEAR_MEMORY ;
 int R9_CURSER_ROW_0 ;
 scalar_t__ REQ_CONTAINS_HEADER (TYPE_1__*) ;
 scalar_t__ REQ_CONTAINS_TIME (TYPE_1__*) ;
 int ROW (int) ;
 int SAA5246A_REGISTER_R8 ;
 int VTX_PAGESIZE ;
 scalar_t__ copy_to_user (scalar_t__,char*,int) ;
 scalar_t__ i2c_getdata (struct saa5246a_device*,int,char*) ;
 scalar_t__ i2c_senddata (struct saa5246a_device*,int ,int,int ,int,int ) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int max (int,int ) ;
 int min (int,int) ;

__attribute__((used)) static inline int saa5246a_get_page(struct saa5246a_device *t,
 vtx_pagereq_t *req)
{
 int start, end, size;
 char *buf;
 int err;

 if (req->pgbuf < 0 || req->pgbuf >= NUM_DAUS ||
     req->start < 0 || req->start > req->end || req->end >= VTX_PAGESIZE)
  return -EINVAL;

 buf = kmalloc(VTX_PAGESIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;


 err = -EIO;

 end = min(req->end, VTX_PAGESIZE - 1);
 if (i2c_senddata(t, SAA5246A_REGISTER_R8,
   req->pgbuf | R8_DO_NOT_CLEAR_MEMORY,
   ROW(req->start), COLUMN(req->start), COMMAND_END))
  goto out;
 if (i2c_getdata(t, end - req->start + 1, buf))
  goto out;
 err = -EFAULT;
 if (copy_to_user(req->buffer, buf, end - req->start + 1))
  goto out;




 if (REQ_CONTAINS_TIME(req)) {
  start = max(req->start, POS_TIME_START);
  end = min(req->end, POS_TIME_END);
  size = end - start + 1;
  err = -EINVAL;
  if (size < 0)
   goto out;
  err = -EIO;
  if (i2c_senddata(t, SAA5246A_REGISTER_R8,
    R8_ACTIVE_CHAPTER_4 | R8_DO_NOT_CLEAR_MEMORY,
    R9_CURSER_ROW_0, start, COMMAND_END))
   goto out;
  if (i2c_getdata(t, size, buf))
   goto out;
  err = -EFAULT;
  if (copy_to_user(req->buffer + start - req->start, buf, size))
   goto out;
 }

 if (REQ_CONTAINS_HEADER(req) && t->is_searching[req->pgbuf]) {
  start = max(req->start, POS_HEADER_START);
  end = min(req->end, POS_HEADER_END);
  size = end - start + 1;
  err = -EINVAL;
  if (size < 0)
   goto out;
  err = -EIO;
  if (i2c_senddata(t, SAA5246A_REGISTER_R8,
    R8_ACTIVE_CHAPTER_4 | R8_DO_NOT_CLEAR_MEMORY,
    R9_CURSER_ROW_0, start, COMMAND_END))
   goto out;
  if (i2c_getdata(t, end - start + 1, buf))
   goto out;
  err = -EFAULT;
  if (copy_to_user(req->buffer + start - req->start, buf, size))
   goto out;
 }
 err = 0;
out:
 kfree(buf);
 return err;
}
