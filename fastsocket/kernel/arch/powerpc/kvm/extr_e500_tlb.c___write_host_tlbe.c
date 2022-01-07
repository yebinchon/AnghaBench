
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int mas7; int mas3; int mas2; int mas1; } ;


 int SPRN_MAS1 ;
 int SPRN_MAS2 ;
 int SPRN_MAS3 ;
 int SPRN_MAS7 ;
 int mtspr (int ,int ) ;

__attribute__((used)) static inline void __write_host_tlbe(struct tlbe *stlbe)
{
 mtspr(SPRN_MAS1, stlbe->mas1);
 mtspr(SPRN_MAS2, stlbe->mas2);
 mtspr(SPRN_MAS3, stlbe->mas3);
 mtspr(SPRN_MAS7, stlbe->mas7);
 __asm__ __volatile__ ("tlbwe\n" : : );
}
