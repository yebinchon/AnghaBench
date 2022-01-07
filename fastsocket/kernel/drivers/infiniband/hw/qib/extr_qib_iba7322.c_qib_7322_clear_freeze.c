
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_devdata {int num_pports; unsigned long long control; TYPE_2__* pport; TYPE_1__* cspec; } ;
struct TYPE_4__ {scalar_t__ link_speed_supported; } ;
struct TYPE_3__ {unsigned long long errormask; } ;


 unsigned long long E_SPKT_ERRS_IGNORE ;
 int kr_control ;
 int kr_errclear ;
 int kr_errmask ;
 int kr_hwerrclear ;
 int kr_scratch ;
 int krp_errclear ;
 int krp_errmask ;
 int qib_7322_set_intr_state (struct qib_devdata*,int) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;
 int qib_write_kreg_port (TYPE_2__*,int ,unsigned long long) ;

__attribute__((used)) static void qib_7322_clear_freeze(struct qib_devdata *dd)
{
 int pidx;


 qib_write_kreg(dd, kr_errmask, 0ULL);

 for (pidx = 0; pidx < dd->num_pports; ++pidx)
  if (dd->pport[pidx].link_speed_supported)
   qib_write_kreg_port(dd->pport + pidx, krp_errmask,
         0ULL);


 qib_7322_set_intr_state(dd, 0);


 qib_write_kreg(dd, kr_control, dd->control);
 qib_read_kreg32(dd, kr_scratch);







 qib_write_kreg(dd, kr_hwerrclear, 0ULL);
 qib_write_kreg(dd, kr_errclear, E_SPKT_ERRS_IGNORE);
 qib_write_kreg(dd, kr_errmask, dd->cspec->errormask);

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  if (!dd->pport[pidx].link_speed_supported)
   continue;
  qib_write_kreg_port(dd->pport + pidx, krp_errclear, ~0Ull);
  qib_write_kreg_port(dd->pport + pidx, krp_errmask, ~0Ull);
 }
 qib_7322_set_intr_state(dd, 1);
}
