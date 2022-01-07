
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sp_bb_data; } ;
struct fc_els_flogi {TYPE_2__* fl_cssp; TYPE_1__ fl_csp; } ;
struct TYPE_4__ {int cp_rdfs; } ;


 unsigned int FC_SP_BB_DATA_MASK ;
 unsigned int FC_SP_MIN_MAX_PAYLOAD ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static unsigned int fc_plogi_get_maxframe(struct fc_els_flogi *flp,
       unsigned int maxval)
{
 unsigned int mfs;





 mfs = ntohs(flp->fl_csp.sp_bb_data) & FC_SP_BB_DATA_MASK;
 if (mfs >= FC_SP_MIN_MAX_PAYLOAD && mfs < maxval)
  maxval = mfs;
 mfs = ntohs(flp->fl_cssp[3 - 1].cp_rdfs);
 if (mfs >= FC_SP_MIN_MAX_PAYLOAD && mfs < maxval)
  maxval = mfs;
 return maxval;
}
