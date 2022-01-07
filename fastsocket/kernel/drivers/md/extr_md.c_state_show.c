
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unacked_exist; } ;
struct md_rdev {int flags; TYPE_1__ badblocks; } ;
typedef scalar_t__ ssize_t ;


 int Blocked ;
 int Faulty ;
 int In_sync ;
 int Replacement ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int WriteMostly ;
 scalar_t__ sprintf (char*,char*,...) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
state_show(struct md_rdev *rdev, char *page)
{
 char *sep = "";
 size_t len = 0;

 if (test_bit(Faulty, &rdev->flags) ||
     rdev->badblocks.unacked_exist) {
  len+= sprintf(page+len, "%sfaulty",sep);
  sep = ",";
 }
 if (test_bit(In_sync, &rdev->flags)) {
  len += sprintf(page+len, "%sin_sync",sep);
  sep = ",";
 }
 if (test_bit(WriteMostly, &rdev->flags)) {
  len += sprintf(page+len, "%swrite_mostly",sep);
  sep = ",";
 }
 if (test_bit(Blocked, &rdev->flags) ||
     (rdev->badblocks.unacked_exist
      && !test_bit(Faulty, &rdev->flags))) {
  len += sprintf(page+len, "%sblocked", sep);
  sep = ",";
 }
 if (!test_bit(Faulty, &rdev->flags) &&
     !test_bit(In_sync, &rdev->flags)) {
  len += sprintf(page+len, "%sspare", sep);
  sep = ",";
 }
 if (test_bit(WriteErrorSeen, &rdev->flags)) {
  len += sprintf(page+len, "%swrite_error", sep);
  sep = ",";
 }
 if (test_bit(WantReplacement, &rdev->flags)) {
  len += sprintf(page+len, "%swant_replacement", sep);
  sep = ",";
 }
 if (test_bit(Replacement, &rdev->flags)) {
  len += sprintf(page+len, "%sreplacement", sep);
  sep = ",";
 }

 return len+sprintf(page+len, "\n");
}
