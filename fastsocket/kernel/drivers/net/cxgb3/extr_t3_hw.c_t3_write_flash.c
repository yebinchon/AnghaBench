
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int EIO ;
 unsigned int SF_PROG_PAGE ;
 unsigned int SF_SIZE ;
 unsigned int SF_WR_ENABLE ;
 int flash_wait_op (struct adapter*,int,int) ;
 scalar_t__ memcmp (int const*,int *,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int sf1_write (struct adapter*,unsigned int,int,unsigned int) ;
 unsigned int swab32 (unsigned int) ;
 int t3_read_flash (struct adapter*,unsigned int,int ,int *,int) ;

__attribute__((used)) static int t3_write_flash(struct adapter *adapter, unsigned int addr,
     unsigned int n, const u8 *data)
{
 int ret;
 u32 buf[64];
 unsigned int i, c, left, val, offset = addr & 0xff;

 if (addr + n > SF_SIZE || offset + n > 256)
  return -EINVAL;

 val = swab32(addr) | SF_PROG_PAGE;

 if ((ret = sf1_write(adapter, 1, 0, SF_WR_ENABLE)) != 0 ||
     (ret = sf1_write(adapter, 4, 1, val)) != 0)
  return ret;

 for (left = n; left; left -= c) {
  c = min(left, 4U);
  for (val = 0, i = 0; i < c; ++i)
   val = (val << 8) + *data++;

  ret = sf1_write(adapter, c, c != left, val);
  if (ret)
   return ret;
 }
 if ((ret = flash_wait_op(adapter, 5, 1)) != 0)
  return ret;


 ret = t3_read_flash(adapter, addr & ~0xff, ARRAY_SIZE(buf), buf, 1);
 if (ret)
  return ret;

 if (memcmp(data - n, (u8 *) buf + offset, n))
  return -EIO;
 return 0;
}
