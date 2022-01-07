
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hbq_init {int seqlenoff; int maxlen; int seqlenbcnt; } ;
struct TYPE_3__ {int seqlenoff; int maxlen; int seqlenbcnt; } ;
struct TYPE_4__ {TYPE_1__ profile2; } ;
struct config_hbq_var {TYPE_2__ profiles; } ;



__attribute__((used)) static void
lpfc_build_hbq_profile2(struct config_hbq_var *hbqmb,
   struct lpfc_hbq_init *hbq_desc)
{
 hbqmb->profiles.profile2.seqlenbcnt = hbq_desc->seqlenbcnt;
 hbqmb->profiles.profile2.maxlen = hbq_desc->maxlen;
 hbqmb->profiles.profile2.seqlenoff = hbq_desc->seqlenoff;
}
