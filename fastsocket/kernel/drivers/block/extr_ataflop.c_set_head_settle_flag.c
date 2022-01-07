
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDCCMDADD_E ;
 int HeadSettleFlag ;

__attribute__((used)) static inline void set_head_settle_flag(void)
{
 HeadSettleFlag = FDCCMDADD_E;
}
