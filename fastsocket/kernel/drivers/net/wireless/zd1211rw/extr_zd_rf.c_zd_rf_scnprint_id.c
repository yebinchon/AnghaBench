
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int type; } ;


 int scnprintf (char*,size_t,char*,int ) ;
 int zd_rf_name (int ) ;

int zd_rf_scnprint_id(struct zd_rf *rf, char *buffer, size_t size)
{
 return scnprintf(buffer, size, "%s", zd_rf_name(rf->type));
}
