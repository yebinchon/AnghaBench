
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;

__attribute__((used)) static int st6422_stop(struct sd *sd)
{
 PDEBUG(D_STREAM, "Halting stream");

 return 0;
}
