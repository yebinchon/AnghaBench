
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {scalar_t__ RandomData; scalar_t__ wwnn; } ;


 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int lpfc_challenge_key (scalar_t__,int *) ;
 int lpfc_sha_init (int *) ;
 int lpfc_sha_iterate (int *,int *) ;

void
lpfc_hba_init(struct lpfc_hba *phba, uint32_t *hbainit)
{
 int t;
 uint32_t *HashWorking;
 uint32_t *pwwnn = (uint32_t *) phba->wwnn;

 HashWorking = kcalloc(80, sizeof(uint32_t), GFP_KERNEL);
 if (!HashWorking)
  return;

 HashWorking[0] = HashWorking[78] = *pwwnn++;
 HashWorking[1] = HashWorking[79] = *pwwnn;

 for (t = 0; t < 7; t++)
  lpfc_challenge_key(phba->RandomData + t, HashWorking + t);

 lpfc_sha_init(hbainit);
 lpfc_sha_iterate(hbainit, HashWorking);
 kfree(HashWorking);
}
