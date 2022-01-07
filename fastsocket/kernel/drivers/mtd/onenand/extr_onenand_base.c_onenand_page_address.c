
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ONENAND_FPA_MASK ;
 int ONENAND_FPA_SHIFT ;
 int ONENAND_FSA_MASK ;

__attribute__((used)) static int onenand_page_address(int page, int sector)
{

 int fpa, fsa;

 fpa = page & ONENAND_FPA_MASK;
 fsa = sector & ONENAND_FSA_MASK;

 return ((fpa << ONENAND_FPA_SHIFT) | fsa);
}
