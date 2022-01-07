
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int general_stat_tbl_addr; } ;


 int GST_GSTLEN_MPIS_OFFSET ;
 int GST_MPI_STATE_MASK ;
 int GST_MPI_STATE_UNINIT ;
 int MSGU_IBDB_SET ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int SPCv_MSGU_CFG_TABLE_RESET ;
 int init_pci_device_addresses (struct pm8001_hba_info*) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int) ;
 int pm8001_mr32 (int ,int ) ;
 int pm8001_printk (char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int mpi_uninit_check(struct pm8001_hba_info *pm8001_ha)
{
 u32 max_wait_count;
 u32 value;
 u32 gst_len_mpistate;
 init_pci_device_addresses(pm8001_ha);


 pm8001_cw32(pm8001_ha, 0, MSGU_IBDB_SET, SPCv_MSGU_CFG_TABLE_RESET);


 max_wait_count = 2 * 1000 * 1000;
 do {
  udelay(1);
  value = pm8001_cr32(pm8001_ha, 0, MSGU_IBDB_SET);
  value &= SPCv_MSGU_CFG_TABLE_RESET;
 } while ((value != 0) && (--max_wait_count));

 if (!max_wait_count) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("TIMEOUT:IBDB value/=%x\n", value));
  return -1;
 }



 max_wait_count = 2 * 1000 * 1000;
 do {
  udelay(1);
  gst_len_mpistate =
   pm8001_mr32(pm8001_ha->general_stat_tbl_addr,
   GST_GSTLEN_MPIS_OFFSET);
  if (GST_MPI_STATE_UNINIT ==
   (gst_len_mpistate & GST_MPI_STATE_MASK))
   break;
 } while (--max_wait_count);
 if (!max_wait_count) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk(" TIME OUT MPI State = 0x%x\n",
    gst_len_mpistate & GST_MPI_STATE_MASK));
  return -1;
 }

 return 0;
}
