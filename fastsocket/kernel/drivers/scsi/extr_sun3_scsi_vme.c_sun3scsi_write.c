
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* sun3_scsi_regp ;

__attribute__((used)) static inline void sun3scsi_write(int reg, int value)
{
 sun3_scsi_regp[reg] = value;
}
