
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vpd ;
typedef scalar_t__ u8 ;
struct vpd_params {int sn; int ec; int id; } ;
struct adapter {int pdev_dev; int pdev; } ;


 unsigned int EC_LEN ;
 int EINVAL ;
 int FIND_VPD_KW (int,char*) ;
 unsigned int ID_LEN ;
 int PCI_VPD_INFO_FLD_HDR_SIZE ;
 scalar_t__ PCI_VPD_LRDT_ID_STRING ;
 int PCI_VPD_LRDT_RO_DATA ;
 int PCI_VPD_LRDT_TAG_SIZE ;
 int SERNUM_LEN ;
 int VPD_BASE ;
 int VPD_LEN ;
 int dev_err (int ,char*,...) ;
 int memcpy (int ,scalar_t__*,unsigned int) ;
 unsigned int min (int,int ) ;
 int pci_read_vpd (int ,int ,int,scalar_t__*) ;
 int pci_vpd_find_tag (scalar_t__*,int ,int,int ) ;
 int pci_vpd_info_field_size (scalar_t__*) ;
 unsigned int pci_vpd_lrdt_size (scalar_t__*) ;
 int strim (int ) ;

__attribute__((used)) static int get_vpd_params(struct adapter *adapter, struct vpd_params *p)
{
 int i, ret;
 int ec, sn;
 u8 vpd[VPD_LEN], csum;
 unsigned int vpdr_len, kw_offset, id_len;

 ret = pci_read_vpd(adapter->pdev, VPD_BASE, sizeof(vpd), vpd);
 if (ret < 0)
  return ret;

 if (vpd[0] != PCI_VPD_LRDT_ID_STRING) {
  dev_err(adapter->pdev_dev, "missing VPD ID string\n");
  return -EINVAL;
 }

 id_len = pci_vpd_lrdt_size(vpd);
 if (id_len > ID_LEN)
  id_len = ID_LEN;

 i = pci_vpd_find_tag(vpd, 0, VPD_LEN, PCI_VPD_LRDT_RO_DATA);
 if (i < 0) {
  dev_err(adapter->pdev_dev, "missing VPD-R section\n");
  return -EINVAL;
 }

 vpdr_len = pci_vpd_lrdt_size(&vpd[i]);
 kw_offset = i + PCI_VPD_LRDT_TAG_SIZE;
 if (vpdr_len + kw_offset > VPD_LEN) {
  dev_err(adapter->pdev_dev, "bad VPD-R length %u\n", vpdr_len);
  return -EINVAL;
 }
 do { i = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "RV"); if (i < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "RV" "\n"); return -EINVAL; } i += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);
 for (csum = 0; i >= 0; i--)
  csum += vpd[i];

 if (csum) {
  dev_err(adapter->pdev_dev,
   "corrupted VPD EEPROM, actual csum %u\n", csum);
  return -EINVAL;
 }

 do { ec = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "EC"); if (ec < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "EC" "\n"); return -EINVAL; } ec += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);
 do { sn = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "SN"); if (sn < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "SN" "\n"); return -EINVAL; } sn += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);


 memcpy(p->id, vpd + PCI_VPD_LRDT_TAG_SIZE, id_len);
 strim(p->id);
 memcpy(p->ec, vpd + ec, EC_LEN);
 strim(p->ec);
 i = pci_vpd_info_field_size(vpd + sn - PCI_VPD_INFO_FLD_HDR_SIZE);
 memcpy(p->sn, vpd + sn, min(i, SERNUM_LEN));
 strim(p->sn);
 return 0;
}
