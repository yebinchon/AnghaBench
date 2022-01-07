
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mc5 {unsigned int tcam_size; scalar_t__ mode; int parity_enabled; int part_type; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int A_MC5_DB_CONFIG ;
 int A_MC5_DB_DBGI_REQ_ADDR1 ;
 int A_MC5_DB_DBGI_REQ_ADDR2 ;
 int A_MC5_DB_FILTER_TABLE ;
 int A_MC5_DB_ROUTING_TABLE_INDEX ;
 int A_MC5_DB_SERVER_INDEX ;
 int CH_ERR (struct adapter*,char*,...) ;
 int EINVAL ;
 unsigned int F_TMMODE ;
 int F_TMRDY ;
 unsigned int F_TMRST ;


 unsigned int MAX_ROUTES ;
 scalar_t__ MC5_MODE_72_BIT ;
 unsigned int V_TMMODE (int) ;
 int init_idt43102 (struct mc5*) ;
 int init_idt52100 (struct mc5*) ;
 int mc5_dbgi_mode_disable (struct mc5*) ;
 int mc5_dbgi_mode_enable (struct mc5*) ;
 unsigned int t3_read_reg (struct adapter*,int ) ;
 scalar_t__ t3_wait_op_done (struct adapter*,int ,int ,int,int,int ) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

int t3_mc5_init(struct mc5 *mc5, unsigned int nservers, unsigned int nfilters,
  unsigned int nroutes)
{
 u32 cfg;
 int err;
 unsigned int tcam_size = mc5->tcam_size;
 struct adapter *adap = mc5->adapter;

 if (!tcam_size)
  return 0;

 if (nroutes > MAX_ROUTES || nroutes + nservers + nfilters > tcam_size)
  return -EINVAL;


 cfg = t3_read_reg(adap, A_MC5_DB_CONFIG) & ~F_TMMODE;
 cfg |= V_TMMODE(mc5->mode == MC5_MODE_72_BIT) | F_TMRST;
 t3_write_reg(adap, A_MC5_DB_CONFIG, cfg);
 if (t3_wait_op_done(adap, A_MC5_DB_CONFIG, F_TMRDY, 1, 500, 0)) {
  CH_ERR(adap, "TCAM reset timed out\n");
  return -1;
 }

 t3_write_reg(adap, A_MC5_DB_ROUTING_TABLE_INDEX, tcam_size - nroutes);
 t3_write_reg(adap, A_MC5_DB_FILTER_TABLE,
       tcam_size - nroutes - nfilters);
 t3_write_reg(adap, A_MC5_DB_SERVER_INDEX,
       tcam_size - nroutes - nfilters - nservers);

 mc5->parity_enabled = 1;


 t3_write_reg(adap, A_MC5_DB_DBGI_REQ_ADDR1, 0);
 t3_write_reg(adap, A_MC5_DB_DBGI_REQ_ADDR2, 0);

 mc5_dbgi_mode_enable(mc5);

 switch (mc5->part_type) {
 case 128:
  err = init_idt52100(mc5);
  break;
 case 129:
  err = init_idt43102(mc5);
  break;
 default:
  CH_ERR(adap, "Unsupported TCAM type %d\n", mc5->part_type);
  err = -EINVAL;
  break;
 }

 mc5_dbgi_mode_disable(mc5);
 return err;
}
