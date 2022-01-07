
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nodemgr_csr_info {scalar_t__ speed_unverified; int generation; int nodeid; int host; } ;
struct csr1212_csr {int dummy; } ;


 int EINTR ;
 int hpsb_read (int ,int ,int ,int ,void*,int) ;
 scalar_t__ msleep_interruptible (int) ;
 int nodemgr_check_speed (struct nodemgr_csr_info*,int ,void*) ;

__attribute__((used)) static int nodemgr_bus_read(struct csr1212_csr *csr, u64 addr,
       void *buffer, void *__ci)
{
 struct nodemgr_csr_info *ci = (struct nodemgr_csr_info*)__ci;
 int i, error;

 for (i = 1; ; i++) {
  error = hpsb_read(ci->host, ci->nodeid, ci->generation, addr,
      buffer, 4);
  if (!error) {
   ci->speed_unverified = 0;
   break;
  }

  if (i == 3)
   break;



  if (ci->speed_unverified) {
   error = nodemgr_check_speed(ci, addr, buffer);
   if (!error)
    break;
  }
  if (msleep_interruptible(334))
   return -EINTR;
 }
 return error;
}
