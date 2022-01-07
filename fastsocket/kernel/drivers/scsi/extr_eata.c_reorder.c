
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {unsigned long serial_number; int request; } ;
struct mscp {int din; struct scsi_cmnd* SCpnt; } ;
struct hostdata {struct mscp* cp; } ;


 int KERN_INFO ;
 unsigned long ULONG_MAX ;
 int YESNO (unsigned int) ;
 unsigned long blk_rq_pos (int ) ;
 unsigned long blk_rq_sectors (int ) ;
 unsigned int link_statistics ;
 int printk (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned long) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,char*,unsigned long,unsigned int,unsigned int,unsigned int,unsigned long,unsigned long,unsigned long,int ,int ,int ,int ,int ,int ) ;
 int sort (unsigned long*,unsigned int*,unsigned int,unsigned int) ;

__attribute__((used)) static int reorder(struct hostdata *ha, unsigned long cursec,
     unsigned int ihdlr, unsigned int il[], unsigned int n_ready)
{
 struct scsi_cmnd *SCpnt;
 struct mscp *cpp;
 unsigned int k, n;
 unsigned int rev = 0, s = 1, r = 1;
 unsigned int input_only = 1, overlap = 0;
 unsigned long sl[n_ready], pl[n_ready], ll[n_ready];
 unsigned long maxsec = 0, minsec = ULONG_MAX, seek = 0, iseek = 0;
 unsigned long ioseek = 0;

 static unsigned int flushcount = 0, batchcount = 0, sortcount = 0;
 static unsigned int readycount = 0, ovlcount = 0, inputcount = 0;
 static unsigned int readysorted = 0, revcount = 0;
 static unsigned long seeksorted = 0, seeknosort = 0;

 if (link_statistics && !(++flushcount % link_statistics))
  printk("fc %d bc %d ic %d oc %d rc %d rs %d sc %d re %d"
         " av %ldK as %ldK.\n", flushcount, batchcount,
         inputcount, ovlcount, readycount, readysorted, sortcount,
         revcount, seeknosort / (readycount + 1),
         seeksorted / (readycount + 1));

 if (n_ready <= 1)
  return 0;

 for (n = 0; n < n_ready; n++) {
  k = il[n];
  cpp = &ha->cp[k];
  SCpnt = cpp->SCpnt;

  if (!cpp->din)
   input_only = 0;

  if (blk_rq_pos(SCpnt->request) < minsec)
   minsec = blk_rq_pos(SCpnt->request);
  if (blk_rq_pos(SCpnt->request) > maxsec)
   maxsec = blk_rq_pos(SCpnt->request);

  sl[n] = blk_rq_pos(SCpnt->request);
  ioseek += blk_rq_sectors(SCpnt->request);

  if (!n)
   continue;

  if (sl[n] < sl[n - 1])
   s = 0;
  if (sl[n] > sl[n - 1])
   r = 0;

  if (link_statistics) {
   if (sl[n] > sl[n - 1])
    seek += sl[n] - sl[n - 1];
   else
    seek += sl[n - 1] - sl[n];
  }

 }

 if (link_statistics) {
  if (cursec > sl[0])
   seek += cursec - sl[0];
  else
   seek += sl[0] - cursec;
 }

 if (cursec > ((maxsec + minsec) / 2))
  rev = 1;

 if (ioseek > ((maxsec - minsec) / 2))
  rev = 0;

 if (!((rev && r) || (!rev && s)))
  sort(sl, il, n_ready, rev);

 if (!input_only)
  for (n = 0; n < n_ready; n++) {
   k = il[n];
   cpp = &ha->cp[k];
   SCpnt = cpp->SCpnt;
   ll[n] = blk_rq_sectors(SCpnt->request);
   pl[n] = SCpnt->serial_number;

   if (!n)
    continue;

   if ((sl[n] == sl[n - 1])
       || (!rev && ((sl[n - 1] + ll[n - 1]) > sl[n]))
       || (rev && ((sl[n] + ll[n]) > sl[n - 1])))
    overlap = 1;
  }

 if (overlap)
  sort(pl, il, n_ready, 0);

 if (link_statistics) {
  if (cursec > sl[0])
   iseek = cursec - sl[0];
  else
   iseek = sl[0] - cursec;
  batchcount++;
  readycount += n_ready;
  seeknosort += seek / 1024;
  if (input_only)
   inputcount++;
  if (overlap) {
   ovlcount++;
   seeksorted += iseek / 1024;
  } else
   seeksorted += (iseek + maxsec - minsec) / 1024;
  if (rev && !r) {
   revcount++;
   readysorted += n_ready;
  }
  if (!rev && !s) {
   sortcount++;
   readysorted += n_ready;
  }
 }
 return overlap;
}
