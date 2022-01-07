
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int check_string (char*,char const*) ;
 int cpi_req () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sclp_cpi_mutex ;
 int set_string (int ,char const*) ;
 int sysplex_name ;
 int system_level ;
 int system_name ;
 int system_type ;

int sclp_cpi_set_data(const char *system, const char *sysplex, const char *type,
        const u64 level)
{
 int rc;

 rc = check_string("system_name", system);
 if (rc)
  return rc;
 rc = check_string("sysplex_name", sysplex);
 if (rc)
  return rc;
 rc = check_string("system_type", type);
 if (rc)
  return rc;

 mutex_lock(&sclp_cpi_mutex);
 set_string(system_name, system);
 set_string(sysplex_name, sysplex);
 set_string(system_type, type);
 system_level = level;

 rc = cpi_req();
 mutex_unlock(&sclp_cpi_mutex);

 return rc;
}
