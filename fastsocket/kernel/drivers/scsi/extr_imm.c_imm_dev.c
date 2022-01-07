
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int hostdata; } ;
typedef int imm_struct ;



__attribute__((used)) static inline imm_struct *imm_dev(struct Scsi_Host *host)
{
 return *(imm_struct **)&host->hostdata;
}
