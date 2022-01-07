
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ can_queue; scalar_t__ target_busy; scalar_t__ target_blocked; } ;



__attribute__((used)) static inline int scsi_target_is_busy(struct scsi_target *starget)
{
 return ((starget->can_queue > 0 &&
   starget->target_busy >= starget->can_queue) ||
   starget->target_blocked);
}
