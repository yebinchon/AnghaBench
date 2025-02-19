
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int BUSY ;
 int BYTECNT (unsigned int) ;
 int EBUSY ;
 int EINVAL ;
 int SF_ATTEMPTS ;
 int SF_CONT ;
 int SF_DATA ;
 int SF_LOCK ;
 int SF_OP ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int,int ,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int sf1_read(struct adapter *adapter, unsigned int byte_cnt, int cont,
      int lock, u32 *valp)
{
 int ret;

 if (!byte_cnt || byte_cnt > 4)
  return -EINVAL;
 if (t4_read_reg(adapter, SF_OP) & BUSY)
  return -EBUSY;
 cont = cont ? SF_CONT : 0;
 lock = lock ? SF_LOCK : 0;
 t4_write_reg(adapter, SF_OP, lock | cont | BYTECNT(byte_cnt - 1));
 ret = t4_wait_op_done(adapter, SF_OP, BUSY, 0, SF_ATTEMPTS, 5);
 if (!ret)
  *valp = t4_read_reg(adapter, SF_DATA);
 return ret;
}
