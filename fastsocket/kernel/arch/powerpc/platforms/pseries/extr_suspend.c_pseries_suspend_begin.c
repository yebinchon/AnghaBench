
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EAGAIN ;
 int EIO ;
 long H_VASI_ENABLED ;
 int H_VASI_STATE ;
 long H_VASI_SUSPENDING ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall (int ,unsigned long*,int ) ;
 int pr_err (char*,long) ;
 int stream_id ;

__attribute__((used)) static int pseries_suspend_begin(suspend_state_t state)
{
 long vasi_state, rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];


 rc = plpar_hcall(H_VASI_STATE, retbuf, stream_id);

 vasi_state = retbuf[0];

 if (rc) {
  pr_err("pseries_suspend_begin: vasi_state returned %ld\n",rc);
  return rc;
 } else if (vasi_state == H_VASI_ENABLED) {
  return -EAGAIN;
 } else if (vasi_state != H_VASI_SUSPENDING) {
  pr_err("pseries_suspend_begin: vasi_state returned state %ld\n",
         vasi_state);
  return -EIO;
 }

 return 0;
}
