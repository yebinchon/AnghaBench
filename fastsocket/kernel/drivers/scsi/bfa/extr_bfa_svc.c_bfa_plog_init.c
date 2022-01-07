
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_plog_s {int plog_enabled; scalar_t__ tail; scalar_t__ head; int plog_sig; } ;


 int BFA_PL_SIG_LEN ;
 int BFA_PL_SIG_STR ;
 int memcpy (int ,int ,int ) ;
 int memset (char*,int ,int) ;

void
bfa_plog_init(struct bfa_plog_s *plog)
{
 memset((char *)plog, 0, sizeof(struct bfa_plog_s));

 memcpy(plog->plog_sig, BFA_PL_SIG_STR, BFA_PL_SIG_LEN);
 plog->head = plog->tail = 0;
 plog->plog_enabled = 1;
}
