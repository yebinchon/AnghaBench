
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int EINVAL ;
 unsigned int SCR_CONTROL ;
 int uli_scr_cfg_read (struct ata_link*,unsigned int) ;

__attribute__((used)) static int uli_scr_read(struct ata_link *link, unsigned int sc_reg, u32 *val)
{
 if (sc_reg > SCR_CONTROL)
  return -EINVAL;

 *val = uli_scr_cfg_read(link, sc_reg);
 return 0;
}
