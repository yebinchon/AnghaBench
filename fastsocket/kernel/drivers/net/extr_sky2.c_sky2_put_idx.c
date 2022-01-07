
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 int PREF_UNIT_PUT_IDX ;
 int Y2_QADDR (unsigned int,int ) ;
 int mmiowb () ;
 int sky2_write16 (struct sky2_hw*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void sky2_put_idx(struct sky2_hw *hw, unsigned q, u16 idx)
{

 wmb();
 sky2_write16(hw, Y2_QADDR(q, PREF_UNIT_PUT_IDX), idx);


 mmiowb();
}
