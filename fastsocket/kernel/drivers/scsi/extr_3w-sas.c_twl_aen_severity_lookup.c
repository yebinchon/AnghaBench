
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TW_AEN_SEVERITY_DEBUG ;
 scalar_t__ TW_AEN_SEVERITY_ERROR ;
 char** twl_aen_severity_table ;

__attribute__((used)) static char *twl_aen_severity_lookup(unsigned char severity_code)
{
 char *retval = ((void*)0);

 if ((severity_code < (unsigned char) TW_AEN_SEVERITY_ERROR) ||
     (severity_code > (unsigned char) TW_AEN_SEVERITY_DEBUG))
  goto out;

 retval = twl_aen_severity_table[severity_code];
out:
 return retval;
}
