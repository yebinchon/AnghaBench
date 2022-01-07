
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hbq_init {int cmdmatch; int seqlenoff; int cmdcodeoff; int maxlen; int seqlenbcnt; } ;
struct TYPE_3__ {int cmdmatch; int seqlenoff; int cmdcodeoff; int maxlen; int seqlenbcnt; } ;
struct TYPE_4__ {TYPE_1__ profile3; } ;
struct config_hbq_var {TYPE_2__ profiles; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
lpfc_build_hbq_profile3(struct config_hbq_var *hbqmb,
   struct lpfc_hbq_init *hbq_desc)
{
 hbqmb->profiles.profile3.seqlenbcnt = hbq_desc->seqlenbcnt;
 hbqmb->profiles.profile3.maxlen = hbq_desc->maxlen;
 hbqmb->profiles.profile3.cmdcodeoff = hbq_desc->cmdcodeoff;
 hbqmb->profiles.profile3.seqlenoff = hbq_desc->seqlenoff;
 memcpy(&hbqmb->profiles.profile3.cmdmatch, hbq_desc->cmdmatch,
        sizeof(hbqmb->profiles.profile3.cmdmatch));
}
