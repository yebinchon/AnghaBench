
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csr1212_csr {int max_rom; int bus_info_len; int bus_info_data; } ;


 int BUG_ON (int) ;
 int memcpy (int ,int const*,int ) ;

void csr1212_init_local_csr(struct csr1212_csr *csr,
       const u32 *bus_info_data, int max_rom)
{
 static const int mr_map[] = { 4, 64, 1024, 0 };

 BUG_ON(max_rom & ~0x3);
 csr->max_rom = mr_map[max_rom];
 memcpy(csr->bus_info_data, bus_info_data, csr->bus_info_len);
}
