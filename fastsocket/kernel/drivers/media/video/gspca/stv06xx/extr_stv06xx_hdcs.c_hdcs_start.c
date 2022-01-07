
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int D_STREAM ;
 int HDCS_STATE_RUN ;
 int PDEBUG (int ,char*) ;
 int hdcs_set_state (struct sd*,int ) ;

__attribute__((used)) static int hdcs_start(struct sd *sd)
{
 PDEBUG(D_STREAM, "Starting stream");

 return hdcs_set_state(sd, HDCS_STATE_RUN);
}
