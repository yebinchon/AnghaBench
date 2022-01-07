
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {scalar_t__ fw_timeout; scalar_t__ ue_detected; } ;



__attribute__((used)) static inline bool beiscsi_error(struct beiscsi_hba *phba)
{
 return phba->ue_detected || phba->fw_timeout;
}
