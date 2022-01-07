
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osst_tape {int dummy; } ;
struct osst_request {int dummy; } ;


 int OSST_WAIT_POSITION_COMPLETE ;
 int osst_get_frame_position (struct osst_tape*,struct osst_request**) ;
 int osst_set_frame_position (struct osst_tape*,struct osst_request**,int,int ) ;
 int osst_wait_ready (struct osst_tape*,struct osst_request**,int,int ) ;

__attribute__((used)) static int osst_position_tape_and_confirm(struct osst_tape * STp, struct osst_request ** aSRpnt, int frame)
{
 int retval;

 osst_wait_ready(STp, aSRpnt, 15 * 60, 0);
 retval = osst_set_frame_position(STp, aSRpnt, frame, 0);
 if (retval) return (retval);
 osst_wait_ready(STp, aSRpnt, 15 * 60, OSST_WAIT_POSITION_COMPLETE);
 return (osst_get_frame_position(STp, aSRpnt));
}
