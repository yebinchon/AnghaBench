
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_poll; int hbalock; int HCregaddr; int fcp_poll_timer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int DISABLE_FCP_RING_INT ;
 int EINVAL ;
 int ENABLE_FCP_RING_POLLING ;
 int HC_R0INT_ENA ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_FCP_RING ;
 scalar_t__ LPFC_SLI_REV4 ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int del_timer (int *) ;
 int isdigit (char const) ;
 int lpfc_poll_start_timer (struct lpfc_hba*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,int) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;
 int writel (int,int ) ;

__attribute__((used)) static ssize_t
lpfc_poll_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 uint32_t creg_val;
 uint32_t old_val;
 int val=0;

 if (!isdigit(buf[0]))
  return -EINVAL;

 if (sscanf(buf, "%i", &val) != 1)
  return -EINVAL;

 if ((val & 0x3) != val)
  return -EINVAL;

 if (phba->sli_rev == LPFC_SLI_REV4)
  val = 0;

 lpfc_printf_vlog(vport, KERN_ERR, LOG_INIT,
  "3051 lpfc_poll changed from %d to %d\n",
  phba->cfg_poll, val);

 spin_lock_irq(&phba->hbalock);

 old_val = phba->cfg_poll;

 if (val & ENABLE_FCP_RING_POLLING) {
  if ((val & DISABLE_FCP_RING_INT) &&
      !(old_val & DISABLE_FCP_RING_INT)) {
   if (lpfc_readl(phba->HCregaddr, &creg_val)) {
    spin_unlock_irq(&phba->hbalock);
    return -EINVAL;
   }
   creg_val &= ~(HC_R0INT_ENA << LPFC_FCP_RING);
   writel(creg_val, phba->HCregaddr);
   readl(phba->HCregaddr);

   lpfc_poll_start_timer(phba);
  }
 } else if (val != 0x0) {
  spin_unlock_irq(&phba->hbalock);
  return -EINVAL;
 }

 if (!(val & DISABLE_FCP_RING_INT) &&
     (old_val & DISABLE_FCP_RING_INT))
 {
  spin_unlock_irq(&phba->hbalock);
  del_timer(&phba->fcp_poll_timer);
  spin_lock_irq(&phba->hbalock);
  if (lpfc_readl(phba->HCregaddr, &creg_val)) {
   spin_unlock_irq(&phba->hbalock);
   return -EINVAL;
  }
  creg_val |= (HC_R0INT_ENA << LPFC_FCP_RING);
  writel(creg_val, phba->HCregaddr);
  readl(phba->HCregaddr);
 }

 phba->cfg_poll = val;

 spin_unlock_irq(&phba->hbalock);

 return strlen(buf);
}
