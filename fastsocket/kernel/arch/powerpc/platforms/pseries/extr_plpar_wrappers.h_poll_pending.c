
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_POLL_PENDING ;
 long plpar_hcall_norets (int ) ;

__attribute__((used)) static inline long poll_pending(void)
{
 return plpar_hcall_norets(H_POLL_PENDING);
}
