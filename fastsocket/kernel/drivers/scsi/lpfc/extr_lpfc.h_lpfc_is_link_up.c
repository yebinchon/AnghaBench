
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ link_state; } ;


 scalar_t__ LPFC_CLEAR_LA ;
 scalar_t__ LPFC_HBA_READY ;
 scalar_t__ LPFC_LINK_UP ;

__attribute__((used)) static inline int
lpfc_is_link_up(struct lpfc_hba *phba)
{
 return phba->link_state == LPFC_LINK_UP ||
  phba->link_state == LPFC_CLEAR_LA ||
  phba->link_state == LPFC_HBA_READY;
}
