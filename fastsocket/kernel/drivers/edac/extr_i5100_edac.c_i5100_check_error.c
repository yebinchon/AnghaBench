
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int mc; } ;


 int I5100_FERR_NF_MEM ;
 int I5100_NERR_NF_MEM ;
 scalar_t__ i5100_ferr_nf_mem_any (scalar_t__) ;
 int i5100_ferr_nf_mem_chan_indx (scalar_t__) ;
 int i5100_nerr_nf_mem_any (scalar_t__) ;
 int i5100_read_log (struct mem_ctl_info*,int ,scalar_t__,int ) ;
 int pci_read_config_dword (int ,int ,scalar_t__*) ;
 int pci_write_config_dword (int ,int ,scalar_t__) ;

__attribute__((used)) static void i5100_check_error(struct mem_ctl_info *mci)
{
 struct i5100_priv *priv = mci->pvt_info;
 u32 dw;


 pci_read_config_dword(priv->mc, I5100_FERR_NF_MEM, &dw);
 if (i5100_ferr_nf_mem_any(dw)) {
  u32 dw2;

  pci_read_config_dword(priv->mc, I5100_NERR_NF_MEM, &dw2);
  if (dw2)
   pci_write_config_dword(priv->mc, I5100_NERR_NF_MEM,
            dw2);
  pci_write_config_dword(priv->mc, I5100_FERR_NF_MEM, dw);

  i5100_read_log(mci, i5100_ferr_nf_mem_chan_indx(dw),
          i5100_ferr_nf_mem_any(dw),
          i5100_nerr_nf_mem_any(dw2));
 }
}
