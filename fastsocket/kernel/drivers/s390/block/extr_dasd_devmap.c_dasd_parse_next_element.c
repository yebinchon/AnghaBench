
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ERR (char*) ;
 char* dasd_parse_keyword (char*) ;
 char* dasd_parse_range (char*) ;

__attribute__((used)) static char *
dasd_parse_next_element( char *parsestring ) {
 char * residual_str;
 residual_str = dasd_parse_keyword(parsestring);
 if (!IS_ERR(residual_str))
  return residual_str;
 residual_str = dasd_parse_range(parsestring);
 return residual_str;
}
