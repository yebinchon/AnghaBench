
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct std_name {int id; } ;


 int ARRAY_SIZE (int ) ;
 struct std_name* find_std_name (int ,int ,char const*,unsigned int) ;
 int std_groups ;
 int std_items ;

int pvr2_std_str_to_id(v4l2_std_id *idPtr,const char *bufPtr,
         unsigned int bufSize)
{
 v4l2_std_id id = 0;
 v4l2_std_id cmsk = 0;
 v4l2_std_id t;
 int mMode = 0;
 unsigned int cnt;
 char ch;
 const struct std_name *sp;

 while (bufSize) {
  if (!mMode) {
   cnt = 0;
   while ((cnt < bufSize) && (bufPtr[cnt] != '-')) cnt++;
   if (cnt >= bufSize) return 0;
   sp = find_std_name(std_groups, ARRAY_SIZE(std_groups),
        bufPtr,cnt);
   if (!sp) return 0;
   cnt++;
   bufPtr += cnt;
   bufSize -= cnt;
   mMode = !0;
   cmsk = sp->id;
   continue;
  }
  cnt = 0;
  while (cnt < bufSize) {
   ch = bufPtr[cnt];
   if (ch == ';') {
    mMode = 0;
    break;
   }
   if (ch == '/') break;
   cnt++;
  }
  sp = find_std_name(std_items, ARRAY_SIZE(std_items),
       bufPtr,cnt);
  if (!sp) return 0;
  t = sp->id & cmsk;
  if (!t) return 0;
  id |= t;
  if (cnt < bufSize) cnt++;
  bufPtr += cnt;
  bufSize -= cnt;
 }

 if (idPtr) *idPtr = id;
 return !0;
}
