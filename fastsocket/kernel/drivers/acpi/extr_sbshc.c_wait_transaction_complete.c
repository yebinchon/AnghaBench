
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smb_hc {int wait; } ;


 int ETIME ;
 int msecs_to_jiffies (int) ;
 scalar_t__ smb_check_done (struct acpi_smb_hc*) ;
 scalar_t__ wait_event_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static int wait_transaction_complete(struct acpi_smb_hc *hc, int timeout)
{
 if (wait_event_timeout(hc->wait, smb_check_done(hc),
          msecs_to_jiffies(timeout)))
  return 0;





 if (smb_check_done(hc))
  return 0;
 else
  return -ETIME;
}
