
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int UBI_IO_BAD_VID_HDR ;

__attribute__((used)) static int is_error_sane(int err)
{
 if (err == -EIO || err == -ENOMEM || err == UBI_IO_BAD_VID_HDR ||
     err == -ETIMEDOUT)
  return 0;
 return 1;
}
