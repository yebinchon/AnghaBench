
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 unsigned long CLASS_CODE_ETHERTYPE1 ;
 unsigned long CLASS_CODE_ETHERTYPE2 ;
 int EINVAL ;
 unsigned long L2_CLS (unsigned long) ;
 int L2_CLS_VLD ;
 int nr64 (unsigned long) ;
 int nw64 (unsigned long,int ) ;

__attribute__((used)) static int tcam_user_eth_class_enable(struct niu *np, unsigned long class,
          int on)
{
 unsigned long reg;
 u64 val;

 if (class < CLASS_CODE_ETHERTYPE1 ||
     class > CLASS_CODE_ETHERTYPE2)
  return -EINVAL;

 reg = L2_CLS(class - CLASS_CODE_ETHERTYPE1);
 val = nr64(reg);
 if (on)
  val |= L2_CLS_VLD;
 else
  val &= ~L2_CLS_VLD;
 nw64(reg, val);

 return 0;
}
