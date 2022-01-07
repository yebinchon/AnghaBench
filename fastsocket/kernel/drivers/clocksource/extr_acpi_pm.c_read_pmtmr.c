
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_PM_MASK ;
 int inl (int ) ;
 int pmtmr_ioport ;

__attribute__((used)) static inline u32 read_pmtmr(void)
{

 return inl(pmtmr_ioport) & ACPI_PM_MASK;
}
