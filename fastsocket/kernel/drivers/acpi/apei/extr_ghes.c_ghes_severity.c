
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GHES_SEV_CORRECTED ;
 int GHES_SEV_NO ;
 int GHES_SEV_PANIC ;
 int GHES_SEV_RECOVERABLE ;

__attribute__((used)) static inline int ghes_severity(int severity)
{
 switch (severity) {
 case 129:
  return GHES_SEV_NO;
 case 131:
  return GHES_SEV_CORRECTED;
 case 128:
  return GHES_SEV_RECOVERABLE;
 case 130:
  return GHES_SEV_PANIC;
 default:

  return GHES_SEV_PANIC;
 }
}
