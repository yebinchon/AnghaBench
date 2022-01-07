
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mal_instance {int dcr_host; } ;


 int dcr_read (int ,int) ;

__attribute__((used)) static inline u32 get_mal_dcrn(struct mal_instance *mal, int reg)
{
 return dcr_read(mal->dcr_host, reg);
}
