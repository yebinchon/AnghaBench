
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_hw_data {TYPE_1__* fw_dump; int eft; } ;
struct TYPE_2__ {int eft_size; } ;


 int memcpy (void*,int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static inline void *
qla24xx_copy_eft(struct qla_hw_data *ha, void *ptr)
{
 if (!ha->eft)
  return ptr;

 memcpy(ptr, ha->eft, ntohl(ha->fw_dump->eft_size));
 return ptr + ntohl(ha->fw_dump->eft_size);
}
