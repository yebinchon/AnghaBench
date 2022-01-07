
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int sf_size; } ;
struct adapter {TYPE_1__ params; } ;


 int EINVAL ;
 int SF_OP ;
 unsigned int SF_RD_DATA_FAST ;
 int htonl (int ) ;
 int sf1_read (struct adapter*,int,int,int,int *) ;
 int sf1_write (struct adapter*,int,int,int ,unsigned int) ;
 unsigned int swab32 (unsigned int) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int t4_read_flash(struct adapter *adapter, unsigned int addr,
    unsigned int nwords, u32 *data, int byte_oriented)
{
 int ret;

 if (addr + nwords * sizeof(u32) > adapter->params.sf_size || (addr & 3))
  return -EINVAL;

 addr = swab32(addr) | SF_RD_DATA_FAST;

 if ((ret = sf1_write(adapter, 4, 1, 0, addr)) != 0 ||
     (ret = sf1_read(adapter, 1, 1, 0, data)) != 0)
  return ret;

 for ( ; nwords; nwords--, data++) {
  ret = sf1_read(adapter, 4, nwords > 1, nwords == 1, data);
  if (nwords == 1)
   t4_write_reg(adapter, SF_OP, 0);
  if (ret)
   return ret;
  if (byte_oriented)
   *data = htonl(*data);
 }
 return 0;
}
