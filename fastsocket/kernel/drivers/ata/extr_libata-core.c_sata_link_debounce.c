
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int ap; } ;


 int EPIPE ;
 int SCR_STATUS ;
 unsigned long ata_deadline (unsigned long,unsigned long const) ;
 int ata_msleep (int ,unsigned long) ;
 unsigned long jiffies ;
 int sata_scr_read (struct ata_link*,int ,int*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int sata_link_debounce(struct ata_link *link, const unsigned long *params,
         unsigned long deadline)
{
 unsigned long interval = params[0];
 unsigned long duration = params[1];
 unsigned long last_jiffies, t;
 u32 last, cur;
 int rc;

 t = ata_deadline(jiffies, params[2]);
 if (time_before(t, deadline))
  deadline = t;

 if ((rc = sata_scr_read(link, SCR_STATUS, &cur)))
  return rc;
 cur &= 0xf;

 last = cur;
 last_jiffies = jiffies;

 while (1) {
  ata_msleep(link->ap, interval);
  if ((rc = sata_scr_read(link, SCR_STATUS, &cur)))
   return rc;
  cur &= 0xf;


  if (cur == last) {
   if (cur == 1 && time_before(jiffies, deadline))
    continue;
   if (time_after(jiffies,
           ata_deadline(last_jiffies, duration)))
    return 0;
   continue;
  }


  last = cur;
  last_jiffies = jiffies;




  if (time_after(jiffies, deadline))
   return -EPIPE;
 }
}
