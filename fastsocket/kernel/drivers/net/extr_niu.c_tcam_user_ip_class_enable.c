
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 unsigned long CLASS_CODE_USER_PROG1 ;
 unsigned long CLASS_CODE_USER_PROG4 ;
 int EINVAL ;
 unsigned long L3_CLS (unsigned long) ;
 int L3_CLS_VALID ;
 int nr64 (unsigned long) ;
 int nw64 (unsigned long,int ) ;

__attribute__((used)) static int tcam_user_ip_class_enable(struct niu *np, unsigned long class,
         int on)
{
 unsigned long reg;
 u64 val;

 if (class < CLASS_CODE_USER_PROG1 ||
     class > CLASS_CODE_USER_PROG4)
  return -EINVAL;

 reg = L3_CLS(class - CLASS_CODE_USER_PROG1);
 val = nr64(reg);
 if (on)
  val |= L3_CLS_VALID;
 else
  val &= ~L3_CLS_VALID;
 nw64(reg, val);

 return 0;
}
