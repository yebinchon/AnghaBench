
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct device {int dummy; } ;


 scalar_t__ OCP_INITIATOR_AGENT ;
 scalar_t__ OCP_TARGET_AGENT ;
 int WARN_ON (int) ;
 int dev_name (struct device*) ;
 int pr_debug (char*,int ,scalar_t__,...) ;

void omap_pm_set_min_bus_tput(struct device *dev, u8 agent_id, unsigned long r)
{
 if (!dev || (agent_id != OCP_INITIATOR_AGENT &&
     agent_id != OCP_TARGET_AGENT)) {
  WARN_ON(1);
  return;
 };

 if (r == 0)
  pr_debug("OMAP PM: remove min bus tput constraint: "
    "dev %s for agent_id %d\n", dev_name(dev), agent_id);
 else
  pr_debug("OMAP PM: add min bus tput constraint: "
    "dev %s for agent_id %d: rate %ld KiB\n",
    dev_name(dev), agent_id, r);
}
