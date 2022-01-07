
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cc ;


 int SW_C0 ;
 int SW_C1 ;
 int SW_C2 ;
 int SW_C3 ;
 int partial_status ;

__attribute__((used)) static inline void setcc(int cc)
{
 partial_status &= ~(SW_C0 | SW_C1 | SW_C2 | SW_C3);
 partial_status |= (cc) & (SW_C0 | SW_C1 | SW_C2 | SW_C3);
}
