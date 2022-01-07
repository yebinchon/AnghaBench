
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static const char *sun4v_err_type_to_str(u32 type)
{
 switch (type) {
 case 129:
  return "undefined";
 case 130:
  return "uncorrected resumable";
 case 131:
  return "precise nonresumable";
 case 132:
  return "deferred nonresumable";
 case 128:
  return "warning resumable";
 default:
  return "unknown";
 };
}
