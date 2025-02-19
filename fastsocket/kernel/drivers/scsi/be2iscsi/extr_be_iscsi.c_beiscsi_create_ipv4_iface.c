
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {scalar_t__ ipv4_iface; int shost; } ;


 int BEISCSI_LOG_CONFIG ;
 int ENODEV ;
 int ISCSI_IFACE_TYPE_IPV4 ;
 int KERN_ERR ;
 int beiscsi_iscsi_transport ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 scalar_t__ iscsi_create_iface (int ,int *,int ,int ,int ) ;

__attribute__((used)) static int beiscsi_create_ipv4_iface(struct beiscsi_hba *phba)
{
 if (phba->ipv4_iface)
  return 0;

 phba->ipv4_iface = iscsi_create_iface(phba->shost,
           &beiscsi_iscsi_transport,
           ISCSI_IFACE_TYPE_IPV4,
           0, 0);
 if (!phba->ipv4_iface) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Could not "
       "create default IPv4 address.\n");
  return -ENODEV;
 }

 return 0;
}
