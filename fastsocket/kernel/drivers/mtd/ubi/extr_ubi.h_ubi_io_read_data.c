
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {scalar_t__ leb_start; } ;


 int ubi_assert (int) ;
 int ubi_io_read (struct ubi_device const*,void*,int,scalar_t__,int) ;

__attribute__((used)) static inline int ubi_io_read_data(const struct ubi_device *ubi, void *buf,
       int pnum, int offset, int len)
{
 ubi_assert(offset >= 0);
 return ubi_io_read(ubi, buf, pnum, offset + ubi->leb_start, len);
}
