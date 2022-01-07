
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_qp; int num_srq; int rdmarc_per_qp; int num_cq; int num_mcg; int num_mpt; int num_mtt; } ;
struct TYPE_3__ {int num_qp; int num_srq; int rdmarc_per_qp; int num_cq; int num_mcg; int num_mpt; int num_mtt; } ;


 TYPE_2__ default_profile ;
 TYPE_1__ mod_param_profile ;

__attribute__((used)) static void process_mod_param_profile(void)
{
 default_profile.num_qp = (mod_param_profile.num_qp ?
      1 << mod_param_profile.num_qp :
      default_profile.num_qp);
 default_profile.num_srq = (mod_param_profile.num_srq ?
      1 << mod_param_profile.num_srq :
      default_profile.num_srq);
 default_profile.rdmarc_per_qp = (mod_param_profile.rdmarc_per_qp ?
      1 << mod_param_profile.rdmarc_per_qp :
      default_profile.rdmarc_per_qp);
 default_profile.num_cq = (mod_param_profile.num_cq ?
      1 << mod_param_profile.num_cq :
      default_profile.num_cq);
 default_profile.num_mcg = (mod_param_profile.num_mcg ?
      1 << mod_param_profile.num_mcg :
      default_profile.num_mcg);
 default_profile.num_mpt = (mod_param_profile.num_mpt ?
      1 << mod_param_profile.num_mpt :
      default_profile.num_mpt);
 default_profile.num_mtt = (mod_param_profile.num_mtt ?
      1 << mod_param_profile.num_mtt :
      default_profile.num_mtt);
}
