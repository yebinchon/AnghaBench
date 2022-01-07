
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct therm {int hi; int lo; } ;


 int CFG_CPU ;
 int THERM_START_CONVERT ;
 int THERM_WRITE_CONFIG ;
 int THERM_WRITE_TH ;
 int THERM_WRITE_TL ;
 int ds1620_out (int ,int,int ) ;

__attribute__((used)) static void ds1620_write_state(struct therm *therm)
{
 ds1620_out(THERM_WRITE_CONFIG, 8, CFG_CPU);
 ds1620_out(THERM_WRITE_TL, 9, therm->lo);
 ds1620_out(THERM_WRITE_TH, 9, therm->hi);
 ds1620_out(THERM_START_CONVERT, 0, 0);
}
