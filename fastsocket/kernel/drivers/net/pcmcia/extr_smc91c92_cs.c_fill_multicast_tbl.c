
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;


 int ether_crc (int,int*) ;

__attribute__((used)) static void fill_multicast_tbl(int count, struct dev_mc_list *addrs,
          u_char *multicast_table)
{
    struct dev_mc_list *mc_addr;

    for (mc_addr = addrs; mc_addr && count-- > 0; mc_addr = mc_addr->next) {
 u_int position = ether_crc(6, mc_addr->dmi_addr);

 if ((mc_addr->dmi_addr[0] & 1) == 0)
     continue;

 multicast_table[position >> 29] |= 1 << ((position >> 26) & 7);
    }
}
