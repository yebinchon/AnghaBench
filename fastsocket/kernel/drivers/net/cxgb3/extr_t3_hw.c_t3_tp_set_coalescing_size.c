
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_TP_PARA_REG2 ;
 int A_TP_PARA_REG3 ;
 int EINVAL ;
 int F_RXCOALESCEENABLE ;
 int F_RXCOALESCEPSHEN ;
 unsigned int MAX_RX_COALESCING_LEN ;
 int V_MAXRXDATA (unsigned int) ;
 int V_RXCOALESCESIZE (unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int t3_tp_set_coalescing_size(struct adapter *adap,
         unsigned int size, int psh)
{
 u32 val;

 if (size > MAX_RX_COALESCING_LEN)
  return -EINVAL;

 val = t3_read_reg(adap, A_TP_PARA_REG3);
 val &= ~(F_RXCOALESCEENABLE | F_RXCOALESCEPSHEN);

 if (size) {
  val |= F_RXCOALESCEENABLE;
  if (psh)
   val |= F_RXCOALESCEPSHEN;
  size = min(MAX_RX_COALESCING_LEN, size);
  t3_write_reg(adap, A_TP_PARA_REG2, V_RXCOALESCESIZE(size) |
        V_MAXRXDATA(MAX_RX_COALESCING_LEN));
 }
 t3_write_reg(adap, A_TP_PARA_REG3, val);
 return 0;
}
