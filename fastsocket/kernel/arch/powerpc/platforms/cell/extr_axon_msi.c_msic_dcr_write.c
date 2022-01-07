
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axon_msic {int dcr_host; } ;


 int dcr_write (int ,unsigned int,int ) ;
 int pr_devel (char*,int ,unsigned int) ;

__attribute__((used)) static void msic_dcr_write(struct axon_msic *msic, unsigned int dcr_n, u32 val)
{
 pr_devel("axon_msi: dcr_write(0x%x, 0x%x)\n", val, dcr_n);

 dcr_write(msic->dcr_host, dcr_n, val);
}
