
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_caps_config_cmd {int niccaps; void* op_to_write; void* retval_len16; } ;
struct adapter {int fn; int pdev_dev; } ;


 int CSUM_HAS_PSEUDO_HDR ;
 int FW_CAPS_CONFIG_CMD ;
 int FW_CAPS_CONFIG_NIC_VM ;
 int FW_CMD_CAP_PF ;
 int FW_CMD_OP (int ) ;
 int FW_CMD_READ ;
 int FW_CMD_REQUEST ;
 int FW_CMD_WRITE ;
 int FW_LEN16 (struct fw_caps_config_cmd) ;
 int FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ;
 int FW_RSS_GLB_CONFIG_CMD_TNLALLLKP ;
 int FW_RSS_GLB_CONFIG_CMD_TNLMAPEN ;
 int HPZ0 (scalar_t__) ;
 int MAX_EGRQ ;
 int MAX_INGQ ;
 scalar_t__ PAGE_SHIFT ;
 int TP_INGRESS_CONFIG ;
 int TP_PIO_ADDR ;
 int TP_PIO_DATA ;
 int TP_SHIFT_CNT ;
 int ULP_RX_TDDP_PSZ ;
 int dev_err (int ,char*) ;
 void* htonl (int) ;
 int htons (int ) ;
 int memset (struct fw_caps_config_cmd*,int ,int) ;
 int t4_cfg_pfvf (struct adapter*,int ,int ,int ,int ,int,int ,int ,int ,int,int,int,int,int ,int ) ;
 int t4_config_glbl_rss (struct adapter*,int ,int ,int) ;
 int t4_early_init (struct adapter*,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_sge_init (struct adapter*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_caps_config_cmd*,int,struct fw_caps_config_cmd*) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 scalar_t__ vf_acls ;

__attribute__((used)) static int adap_init1(struct adapter *adap, struct fw_caps_config_cmd *c)
{
 u32 v;
 int ret;


 memset(c, 0, sizeof(*c));
 c->op_to_write = htonl(FW_CMD_OP(FW_CAPS_CONFIG_CMD) |
          FW_CMD_REQUEST | FW_CMD_READ);
 c->retval_len16 = htonl(FW_LEN16(*c));
 ret = t4_wr_mbox(adap, adap->fn, c, sizeof(*c), c);
 if (ret < 0)
  return ret;


 if (c->niccaps & htons(FW_CAPS_CONFIG_NIC_VM)) {
  if (!vf_acls)
   c->niccaps ^= htons(FW_CAPS_CONFIG_NIC_VM);
  else
   c->niccaps = htons(FW_CAPS_CONFIG_NIC_VM);
 } else if (vf_acls) {
  dev_err(adap->pdev_dev, "virtualization ACLs not supported");
  return ret;
 }
 c->op_to_write = htonl(FW_CMD_OP(FW_CAPS_CONFIG_CMD) |
          FW_CMD_REQUEST | FW_CMD_WRITE);
 ret = t4_wr_mbox(adap, adap->fn, c, sizeof(*c), ((void*)0));
 if (ret < 0)
  return ret;

 ret = t4_config_glbl_rss(adap, adap->fn,
     FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL,
     FW_RSS_GLB_CONFIG_CMD_TNLMAPEN |
     FW_RSS_GLB_CONFIG_CMD_TNLALLLKP);
 if (ret < 0)
  return ret;

 ret = t4_cfg_pfvf(adap, adap->fn, adap->fn, 0, MAX_EGRQ, 64, MAX_INGQ,
     0, 0, 4, 0xf, 0xf, 16, FW_CMD_CAP_PF, FW_CMD_CAP_PF);
 if (ret < 0)
  return ret;

 t4_sge_init(adap);


 t4_write_reg(adap, TP_SHIFT_CNT, 0x64f8849);
 t4_write_reg(adap, ULP_RX_TDDP_PSZ, HPZ0(PAGE_SHIFT - 12));
 t4_write_reg(adap, TP_PIO_ADDR, TP_INGRESS_CONFIG);
 v = t4_read_reg(adap, TP_PIO_DATA);
 t4_write_reg(adap, TP_PIO_DATA, v & ~CSUM_HAS_PSEUDO_HDR);


 return t4_early_init(adap, adap->fn);
}
