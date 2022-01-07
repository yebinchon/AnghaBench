
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* parm_dir; char* parm_compress; char* parm_debug; int parm_mode; int parm_mem; int * parm_part; } ;


 char* PARM_COMP ;
 char* PARM_COMP_DFLT ;
 char* PARM_COMP_GZIP ;
 char* PARM_COMP_NONE ;
 char* PARM_DEBUG ;
 char* PARM_DEBUG_DFLT ;
 char* PARM_DEBUG_MAX ;
 char* PARM_DEBUG_MIN ;
 char* PARM_DIR ;
 char* PARM_DIR_DFLT ;
 char* PARM_MEM ;
 char* PARM_MODE ;
 char* PARM_MODE_AUTO ;
 int PARM_MODE_AUTO_NUM ;
 char* PARM_MODE_DFLT ;
 char* PARM_MODE_INTERACT ;
 int PARM_MODE_INTERACT_NUM ;
 char* PARM_PART ;
 int PRINT_ERR (char*,char*) ;
 int PRINT_WARN (char*,char*,...) ;
 char* atoi (char*) ;
 TYPE_1__ g ;
 scalar_t__ strcmp (char*,char*) ;
 void* strtok (char*,char*) ;
 int strtoll (char*,char**,int ) ;

__attribute__((used)) static int parse_parameter(char *parameter)
{
 char *token;
 char *end_ptr;

 token = strtok(parameter, "=");
 if (token == ((void*)0))
  return 0;

 if (strcmp(token, PARM_DIR) == 0) {

  g.parm_dir = strtok(((void*)0), "=");
  if (g.parm_dir == ((void*)0)) {
   PRINT_WARN("No value for '%s' parameter specified\n",
        PARM_DIR);
   PRINT_WARN("Using default: %s\n", PARM_DIR_DFLT);
   g.parm_dir = PARM_DIR_DFLT;
  }
 } else if (strcmp(token, PARM_PART) == 0) {

  g.parm_part = strtok(((void*)0), "=");
  if (g.parm_part == ((void*)0)) {
   PRINT_ERR("No value for '%s' parameter "
      "specified\n", PARM_PART);
   return -1;
  }
 } else if (strcmp(token, PARM_MEM) == 0) {

  char *mem_str = strtok(((void*)0), "=");
  if (mem_str == ((void*)0)) {
   PRINT_ERR("No value for '%s' parameter "
      "specified\n", PARM_MEM);
   return -1;
  }
  g.parm_mem = strtoll(mem_str, &end_ptr, 0);
  if (*end_ptr != 0) {
   PRINT_ERR("Invalid value for '%s' parameter "
      "specified\n", PARM_MEM);
   return -1;
  }
 } else if (strcmp(token, PARM_COMP) == 0) {

  g.parm_compress = strtok(((void*)0), "=");
  if (g.parm_compress == ((void*)0)) {
   PRINT_WARN("No value for '%s' parameter "
       "specified\n", PARM_COMP);
   PRINT_WARN("Using default: %s\n", PARM_COMP_DFLT);
   g.parm_compress = PARM_COMP_DFLT;
  } else if ((strcmp(g.parm_compress, PARM_COMP_GZIP) != 0) &&
      (strcmp(g.parm_compress, PARM_COMP_NONE) != 0)) {
   PRINT_WARN("Unknown dump compression '%s' "
       "specified!\n", g.parm_compress);
   PRINT_WARN("Using default: %s\n", PARM_COMP_DFLT);
   g.parm_compress = PARM_COMP_DFLT;
  }
 } else if (strcmp(token, PARM_DEBUG) == 0) {

  char *s = strtok(((void*)0), "=");
  if (s == ((void*)0)) {
   PRINT_WARN("No value for '%s' parameter "
    "specified\n", PARM_DEBUG);
   PRINT_WARN("Using default: %d\n", PARM_DEBUG_DFLT);
  } else {
   g.parm_debug = atoi(s);
   if ((g.parm_debug < PARM_DEBUG_MIN) ||
       (g.parm_debug > PARM_DEBUG_MAX)) {
    PRINT_WARN("Invalid value (%i) for %s "
    "parameter specified (allowed range is "
    "%i - %i)\n", g.parm_debug, PARM_DEBUG,
    PARM_DEBUG_MIN, PARM_DEBUG_MAX);
    PRINT_WARN("Using default: %i\n",
    PARM_DEBUG_DFLT);
    g.parm_debug = PARM_DEBUG_DFLT;
   }
  }
 } else if (strcmp(token, PARM_MODE) == 0) {

  char *s = strtok(((void*)0), "=");
  if (s == ((void*)0)) {
   PRINT_WARN("No value for '%s' parameter "
    "specified\n", PARM_MODE);
   PRINT_WARN("Using default: %s\n", PARM_MODE_DFLT);
  } else if (strcmp(s, PARM_MODE_INTERACT) == 0) {
   g.parm_mode = PARM_MODE_INTERACT_NUM;
  } else if (strcmp(s, PARM_MODE_AUTO) == 0) {
   g.parm_mode = PARM_MODE_AUTO_NUM;
  } else {
   PRINT_WARN("Unknown dump mode: %s\n", s);
   PRINT_WARN("Using default: %s\n", PARM_MODE_DFLT);
  }
 }
 return 0;
}
