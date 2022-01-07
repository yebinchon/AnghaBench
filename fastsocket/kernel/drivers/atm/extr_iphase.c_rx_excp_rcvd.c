
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u16 ;
struct atm_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ reass_reg; scalar_t__ reass_ram; } ;
typedef TYPE_1__ IADEV ;


 int EXCPQ_EMPTY ;
 scalar_t__ EXCP_Q_ED_ADR ;
 scalar_t__ EXCP_Q_RD_PTR ;
 scalar_t__ EXCP_Q_ST_ADR ;
 scalar_t__ EXCP_Q_WR_PTR ;
 int IF_ERR (int ) ;
 TYPE_1__* INPH_IA_DEV (struct atm_dev*) ;
 scalar_t__ STATE_REG ;
 int printk (char*,...) ;
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void rx_excp_rcvd(struct atm_dev *dev)
{
}
