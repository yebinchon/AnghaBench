
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct qib_pportdata {TYPE_3__* dd; TYPE_1__* cpspec; int hw_pidx; } ;
struct TYPE_7__ {TYPE_2__* cspec; } ;
struct TYPE_6__ {scalar_t__ r1; } ;
struct TYPE_5__ {int qdr_dfe_on; } ;


 int BMASK (int,int) ;
 int IBSD (int ) ;
 int IBSD_TX_DEEMPHASIS_OVERRIDE_0 ;
 scalar_t__ IS_QME (TYPE_3__*) ;
 int LE2_DEFAULT ;
 int LE2_QME ;
 unsigned long long QDR_STATIC_ADAPT_DOWN ;
 unsigned long long QDR_STATIC_ADAPT_DOWN_R1 ;
 unsigned long long SYM_MASK (int ,int ) ;
 int ahb_mod (TYPE_3__*,int ,int,int,int,int) ;
 int ibsd_wr_allchans (struct qib_pportdata*,int,int,int) ;
 int init_txdds_table (struct qib_pportdata*,int ) ;
 int krp_static_adapt_dis (int) ;
 int krp_tx_deemph_override ;
 int qib_write_kreg_port (struct qib_pportdata*,int ,unsigned long long) ;
 int reset_tx_deemphasis_override ;
 int serdes_7322_los_enable (struct qib_pportdata*,int) ;

__attribute__((used)) static int serdes_7322_init_old(struct qib_pportdata *ppd)
{
 u32 le_val;





 init_txdds_table(ppd, 0);


 qib_write_kreg_port(ppd, krp_tx_deemph_override,
  SYM_MASK(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
  reset_tx_deemphasis_override));



 ibsd_wr_allchans(ppd, 2, 0, BMASK(11, 9));


 ibsd_wr_allchans(ppd, 11, (1 << 11), BMASK(12, 11));

 ibsd_wr_allchans(ppd, 13, (1 << 6), (1 << 6));


 le_val = IS_QME(ppd->dd) ? LE2_QME : LE2_DEFAULT;
 ibsd_wr_allchans(ppd, 13, (le_val << 7), BMASK(9, 7));


 le_val = IS_QME(ppd->dd) ? 0 : 1;
 ibsd_wr_allchans(ppd, 13, (le_val << 5), (1 << 5));


 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 10, 0 << 14, 1 << 14);


 ibsd_wr_allchans(ppd, 5, (0 << 8), BMASK(9, 8));



 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 5, 8 << 11, BMASK(14, 11));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 7, 8 << 4, BMASK(7, 4));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 8, 8 << 11, BMASK(14, 11));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 10, 8 << 4, BMASK(7, 4));


 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 6, 4 << 0, BMASK(3, 0));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 7, 4 << 8, BMASK(11, 8));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 9, 4 << 0, BMASK(3, 0));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 10, 4 << 8, BMASK(11, 8));


 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 9, 1 << 15, 1 << 15);


 ibsd_wr_allchans(ppd, 14, (1 << 3), BMASK(5, 3));
 ibsd_wr_allchans(ppd, 20, (2 << 10), BMASK(12, 10));
 ibsd_wr_allchans(ppd, 20, (4 << 13), BMASK(15, 13));

 serdes_7322_los_enable(ppd, 1);


 ibsd_wr_allchans(ppd, 9, 0 << 15, 1 << 15);


 ibsd_wr_allchans(ppd, 16, 0 << 0, BMASK(1, 0));


 le_val = (ppd->dd->cspec->r1 || IS_QME(ppd->dd)) ? 0xb6c0 : 0x6bac;
 ibsd_wr_allchans(ppd, 21, le_val, 0xfffe);





 qib_write_kreg_port(ppd, krp_static_adapt_dis(0), 0ULL);
 qib_write_kreg_port(ppd, krp_static_adapt_dis(1), 0ULL);
 qib_write_kreg_port(ppd, krp_static_adapt_dis(2),
       ppd->dd->cspec->r1 ?
       QDR_STATIC_ADAPT_DOWN_R1 : QDR_STATIC_ADAPT_DOWN);
 ppd->cpspec->qdr_dfe_on = 1;


 ibsd_wr_allchans(ppd, 38, 0 << 10, 1 << 10);


 ibsd_wr_allchans(ppd, 12, 1 << 4, 1 << 4);

 if (!ppd->dd->cspec->r1) {
  ibsd_wr_allchans(ppd, 12, 1 << 12, 1 << 12);
  ibsd_wr_allchans(ppd, 12, 2 << 8, 0x0f << 8);
 }


 ibsd_wr_allchans(ppd, 2, 15 << 5, BMASK(8, 5));

 return 0;
}
