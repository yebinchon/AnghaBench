
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; int type; scalar_t__ tagged_supported; struct Scsi_Host* host; } ;
struct hostdata {int board_number; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int FALSE ;
 int KERN_INFO ;
 int MAX_CMD_PER_LUN ;
 int MSG_ORDERED_TAG ;
 int MSG_SIMPLE_TAG ;
 scalar_t__ TAG_ORDERED ;
 scalar_t__ TAG_SIMPLE ;
 scalar_t__ TLDEV (int ) ;
 scalar_t__ linked_comm ;
 int max_queue_depth ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int sdev_printk (int ,struct scsi_device*,char*,int,char*,char*) ;
 scalar_t__ tag_mode ;

__attribute__((used)) static int u14_34f_slave_configure(struct scsi_device *dev) {
   int j, tqd, utqd;
   char *tag_suffix, *link_suffix;
   struct Scsi_Host *host = dev->host;

   j = ((struct hostdata *) host->hostdata)->board_number;

   utqd = MAX_CMD_PER_LUN;
   tqd = max_queue_depth;

   if (TLDEV(dev->type) && dev->tagged_supported)

      if (tag_mode == TAG_SIMPLE) {
         scsi_adjust_queue_depth(dev, MSG_SIMPLE_TAG, tqd);
         tag_suffix = ", simple tags";
         }
      else if (tag_mode == TAG_ORDERED) {
         scsi_adjust_queue_depth(dev, MSG_ORDERED_TAG, tqd);
         tag_suffix = ", ordered tags";
         }
      else {
         scsi_adjust_queue_depth(dev, 0, tqd);
         tag_suffix = ", no tags";
         }

   else if (TLDEV(dev->type) && linked_comm) {
      scsi_adjust_queue_depth(dev, 0, tqd);
      tag_suffix = ", untagged";
      }

   else {
      scsi_adjust_queue_depth(dev, 0, utqd);
      tag_suffix = "";
      }

   if (TLDEV(dev->type) && linked_comm && dev->queue_depth > 2)
      link_suffix = ", sorted";
   else if (TLDEV(dev->type))
      link_suffix = ", unsorted";
   else
      link_suffix = "";

   sdev_printk(KERN_INFO, dev, "cmds/lun %d%s%s.\n",
          dev->queue_depth, link_suffix, tag_suffix);

   return FALSE;
}
