
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** cper_severity_strs ;

__attribute__((used)) static const char *cper_severity_str(unsigned int severity)
{
 return severity < ARRAY_SIZE(cper_severity_strs) ?
  cper_severity_strs[severity] : "unknown";
}
