
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int last_sense; } ;


 char ATAPI_TEST_READY ;
 int DBMSG (char*) ;
 int HZ ;
 int pt_atapi (struct pt_unit*,char*,int ,int *,int ) ;
 int pt_sleep (int ) ;

__attribute__((used)) static int pt_ready_wait(struct pt_unit *tape, int tmo)
{
 char tr_cmd[12] = { ATAPI_TEST_READY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
 int k, p;

 k = 0;
 while (k < tmo) {
  tape->last_sense = 0;
  pt_atapi(tape, tr_cmd, 0, ((void*)0), DBMSG("test unit ready"));
  p = tape->last_sense;
  if (!p)
   return 0;
  if (!(((p & 0xffff) == 0x0402) || ((p & 0xff) == 6)))
   return p;
  k++;
  pt_sleep(HZ);
 }
 return 0x000020;
}
