
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STAT_BUSY ;
 int pd_current ;
 int status_reg (int ) ;

__attribute__((used)) static inline int pd_ready(void)
{
 return !(status_reg(pd_current) & STAT_BUSY);
}
