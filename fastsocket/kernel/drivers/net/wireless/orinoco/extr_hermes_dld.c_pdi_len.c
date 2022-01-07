
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pdi {int len; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u32
pdi_len(const struct pdi *pdi)
{
 return 2 * (le16_to_cpu(pdi->len) - 1);
}
