
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;
typedef int __be64 ;
typedef int __be32 ;


 int A_SGE_DBQ_CTXT_BADDR ;
 int be64_to_cpu (int) ;
 int t4_mem_win_read_len (struct adapter*,scalar_t__,int *,int) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int read_eq_indices(struct adapter *adap, u16 qid, u16 *pidx, u16 *cidx)
{
 u32 addr = t4_read_reg(adap, A_SGE_DBQ_CTXT_BADDR) + 24 * qid + 8;
 __be64 indices;
 int ret;

 ret = t4_mem_win_read_len(adap, addr, (__be32 *)&indices, 8);
 if (!ret) {
  indices = be64_to_cpu(indices);
  *cidx = (indices >> 25) & 0xffff;
  *pidx = (indices >> 9) & 0xffff;
 }
 return ret;
}
