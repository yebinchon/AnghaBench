
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {struct completion* back; } ;
struct ub_dev {int dummy; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void ub_probe_done(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{
 struct completion *cop = cmd->back;
 complete(cop);
}
