
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_EVENT (int,char*) ;
 int TAPE_DBF_AREA ;
 int ccw_driver_register (int *) ;
 int debug_register (char*,int,int,int) ;
 int debug_register_view (int ,int *) ;
 int debug_set_level (int ,int) ;
 int debug_sprintf_view ;
 int tape_3590_driver ;

__attribute__((used)) static int
tape_3590_init(void)
{
 int rc;

 TAPE_DBF_AREA = debug_register("tape_3590", 2, 2, 4 * sizeof(long));
 debug_register_view(TAPE_DBF_AREA, &debug_sprintf_view);




 DBF_EVENT(3, "3590 init\n");

 rc = ccw_driver_register(&tape_3590_driver);
 if (rc)
  DBF_EVENT(3, "3590 init failed\n");
 else
  DBF_EVENT(3, "3590 registered\n");
 return rc;
}
