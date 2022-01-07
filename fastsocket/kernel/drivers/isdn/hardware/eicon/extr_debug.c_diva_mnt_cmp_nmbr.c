
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* TraceFilter ;
 scalar_t__ diva_dbg_cmp_key (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int diva_mnt_cmp_nmbr (const char* nmbr) {
  const char* ref = &TraceFilter[0];
  int ref_len = strlen(&TraceFilter[0]), nmbr_len = strlen(nmbr);

  if (ref[0] == 'C') {
    if (diva_dbg_cmp_key (&ref[1], "single")) {
      return (0);
    }
    return (-1);
  }

  if (!ref_len || (ref_len > nmbr_len)) {
    return (-1);
  }

  nmbr = nmbr + nmbr_len - 1;
  ref = ref + ref_len - 1;

  while (ref_len--) {
    if (*nmbr-- != *ref--) {
      return (-1);
    }
  }

  return (0);
}
