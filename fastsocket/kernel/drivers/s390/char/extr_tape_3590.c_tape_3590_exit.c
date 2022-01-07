
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAPE_DBF_AREA ;
 int ccw_driver_unregister (int *) ;
 int debug_unregister (int ) ;
 int tape_3590_driver ;

__attribute__((used)) static void
tape_3590_exit(void)
{
 ccw_driver_unregister(&tape_3590_driver);

 debug_unregister(TAPE_DBF_AREA);
}
