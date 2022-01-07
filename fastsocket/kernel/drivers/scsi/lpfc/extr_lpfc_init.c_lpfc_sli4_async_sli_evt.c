
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int lnk_no; } ;
struct lpfc_acqe_sli {int event_data1; int event_data2; } ;
struct TYPE_4__ {TYPE_1__ lnk_info; struct lpfc_acqe_sli sli_intf; } ;
struct lpfc_hba {char* Port; TYPE_2__ sli4_hba; } ;
struct lpfc_acqe_misconfigured_event {struct lpfc_acqe_sli theEvent; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_SLI ;
 scalar_t__ LPFC_SLI_EVENT_TYPE_MISCONFIGURED ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ bf_get (int ,struct lpfc_acqe_sli*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,char,char*,...) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_misconfigured_port0 ;
 int lpfc_sli_misconfigured_port1 ;
 int lpfc_sli_misconfigured_port2 ;
 int lpfc_sli_misconfigured_port3 ;
 int lpfc_trailer_type ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
lpfc_sli4_async_sli_evt(struct lpfc_hba *phba, struct lpfc_acqe_sli *acqe_sli)
{
 char port_name;
 char message[128];
 uint8_t status;
 struct lpfc_acqe_misconfigured_event *misconfigured;


 if ((bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) !=
   LPFC_SLI_INTF_IF_TYPE_2) ||
  (bf_get(lpfc_trailer_type, acqe_sli) !=
   LPFC_SLI_EVENT_TYPE_MISCONFIGURED)) {
  lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
    "2901 Async SLI event - Event Data1:x%08x Event Data2:"
    "x%08x SLI Event Type:%d\n",
    acqe_sli->event_data1, acqe_sli->event_data2,
    bf_get(lpfc_trailer_type, acqe_sli));
  return;
 }

 port_name = phba->Port[0];
 if (port_name == 0x00)
  port_name = '?';

 misconfigured = (struct lpfc_acqe_misconfigured_event *)
     &acqe_sli->event_data1;


 switch (phba->sli4_hba.lnk_info.lnk_no) {
 case 135:
  status = bf_get(lpfc_sli_misconfigured_port0,
     &misconfigured->theEvent);
  break;
 case 134:
  status = bf_get(lpfc_sli_misconfigured_port1,
     &misconfigured->theEvent);
  break;
 case 133:
  status = bf_get(lpfc_sli_misconfigured_port2,
     &misconfigured->theEvent);
  break;
 case 132:
  status = bf_get(lpfc_sli_misconfigured_port3,
     &misconfigured->theEvent);
  break;
 default:
  status = ~129;
  break;
 }

 switch (status) {
 case 129:
  return;
 case 131:
  sprintf(message, "Optics faulted/incorrectly installed/not " "installed - Reseat optics, if issue not "

    "resolved, replace.");
  break;
 case 128:
  sprintf(message,
   "Optics of two types installed - Remove one optic or " "install matching pair of optics.");

  break;
 case 130:
  sprintf(message, "Incompatible optics - Replace with " "compatible optics for card to function.");

  break;
 default:

  sprintf(message, "Unknown event status x%02x", status);
  break;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "3176 Misconfigured Physical Port - "
   "Port Name %c %s\n", port_name, message);
}
