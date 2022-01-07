
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct av7110 {int debi_virt; } ;


 int av7110_debiread (struct av7110*,int ,int,int) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static inline u32 irdebi(struct av7110 *av7110, u32 config, int addr, u32 val, int count)
{
 u32 res;

 res=av7110_debiread(av7110, config, addr, count);
 if (count<=4)
  memcpy(av7110->debi_virt, (char *) &res, count);
 return res;
}
