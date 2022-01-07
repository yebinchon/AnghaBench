
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_CEDE ;
 long plpar_hcall_norets (int ) ;

__attribute__((used)) static inline long cede_processor(void)
{
 return plpar_hcall_norets(H_CEDE);
}
