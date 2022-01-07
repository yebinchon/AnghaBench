
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_lu {scalar_t__ access_complete; } ;


 int sbp2_access_wq ;
 long wait_event_interruptible_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int sbp2util_access_timeout(struct sbp2_lu *lu, int timeout)
{
 long leftover;

 leftover = wait_event_interruptible_timeout(
   sbp2_access_wq, lu->access_complete, timeout);
 lu->access_complete = 0;
 return leftover <= 0;
}
