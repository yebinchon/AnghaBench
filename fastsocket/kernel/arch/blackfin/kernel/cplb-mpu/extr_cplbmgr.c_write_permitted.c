
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CPLB_SUPV_WR ;
 unsigned long CPLB_USER_WR ;
 int FAULT_USERSUPV ;

__attribute__((used)) static inline int write_permitted(int status, unsigned long data)
{
 if (status & FAULT_USERSUPV)
  return !!(data & CPLB_SUPV_WR);
 else
  return !!(data & CPLB_USER_WR);
}
