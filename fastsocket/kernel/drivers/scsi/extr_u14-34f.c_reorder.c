
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {unsigned long serial_number; int request; int lun; int target; int channel; } ;
struct mscp {scalar_t__ xdir; struct scsi_cmnd* SCpnt; } ;
struct TYPE_2__ {struct mscp* cp; } ;


 scalar_t__ DTD_IN ;
 int FALSE ;
 TYPE_1__* HD (unsigned int) ;
 unsigned int TRUE ;
 unsigned long ULONG_MAX ;
 int YESNO (unsigned int) ;
 unsigned long blk_rq_pos (int ) ;
 unsigned long blk_rq_sectors (int ) ;
 unsigned int link_statistics ;
 int printk (char*,...) ;
 int sort (unsigned long*,unsigned int*,unsigned int,int) ;

__attribute__((used)) static int reorder(unsigned int j, unsigned long cursec,
                 unsigned int ihdlr, unsigned int il[], unsigned int n_ready) {
   struct scsi_cmnd *SCpnt;
   struct mscp *cpp;
   unsigned int k, n;
   unsigned int rev = FALSE, s = TRUE, r = TRUE;
   unsigned int input_only = TRUE, overlap = FALSE;
   unsigned long sl[n_ready], pl[n_ready], ll[n_ready];
   unsigned long maxsec = 0, minsec = ULONG_MAX, seek = 0, iseek = 0;
   unsigned long ioseek = 0;

   static unsigned int flushcount = 0, batchcount = 0, sortcount = 0;
   static unsigned int readycount = 0, ovlcount = 0, inputcount = 0;
   static unsigned int readysorted = 0, revcount = 0;
   static unsigned long seeksorted = 0, seeknosort = 0;

   if (link_statistics && !(++flushcount % link_statistics))
      printk("fc %d bc %d ic %d oc %d rc %d rs %d sc %d re %d" " av %ldK as %ldK.\n", flushcount, batchcount, inputcount,

             ovlcount, readycount, readysorted, sortcount, revcount,
             seeknosort / (readycount + 1),
             seeksorted / (readycount + 1));

   if (n_ready <= 1) return FALSE;

   for (n = 0; n < n_ready; n++) {
      k = il[n]; cpp = &HD(j)->cp[k]; SCpnt = cpp->SCpnt;

      if (!(cpp->xdir == DTD_IN)) input_only = FALSE;

      if (blk_rq_pos(SCpnt->request) < minsec)
  minsec = blk_rq_pos(SCpnt->request);
      if (blk_rq_pos(SCpnt->request) > maxsec)
  maxsec = blk_rq_pos(SCpnt->request);

      sl[n] = blk_rq_pos(SCpnt->request);
      ioseek += blk_rq_sectors(SCpnt->request);

      if (!n) continue;

      if (sl[n] < sl[n - 1]) s = FALSE;
      if (sl[n] > sl[n - 1]) r = FALSE;

      if (link_statistics) {
         if (sl[n] > sl[n - 1])
            seek += sl[n] - sl[n - 1];
         else
            seek += sl[n - 1] - sl[n];
         }

      }

   if (link_statistics) {
      if (cursec > sl[0]) seek += cursec - sl[0]; else seek += sl[0] - cursec;
      }

   if (cursec > ((maxsec + minsec) / 2)) rev = TRUE;

   if (ioseek > ((maxsec - minsec) / 2)) rev = FALSE;

   if (!((rev && r) || (!rev && s))) sort(sl, il, n_ready, rev);

   if (!input_only) for (n = 0; n < n_ready; n++) {
      k = il[n]; cpp = &HD(j)->cp[k]; SCpnt = cpp->SCpnt;
      ll[n] = blk_rq_sectors(SCpnt->request); pl[n] = SCpnt->serial_number;

      if (!n) continue;

      if ((sl[n] == sl[n - 1]) || (!rev && ((sl[n - 1] + ll[n - 1]) > sl[n]))
          || (rev && ((sl[n] + ll[n]) > sl[n - 1]))) overlap = TRUE;
      }

   if (overlap) sort(pl, il, n_ready, FALSE);

   if (link_statistics) {
      if (cursec > sl[0]) iseek = cursec - sl[0]; else iseek = sl[0] - cursec;
      batchcount++; readycount += n_ready; seeknosort += seek / 1024;
      if (input_only) inputcount++;
      if (overlap) { ovlcount++; seeksorted += iseek / 1024; }
      else seeksorted += (iseek + maxsec - minsec) / 1024;
      if (rev && !r) { revcount++; readysorted += n_ready; }
      if (!rev && !s) { sortcount++; readysorted += n_ready; }
      }
   return overlap;
}
