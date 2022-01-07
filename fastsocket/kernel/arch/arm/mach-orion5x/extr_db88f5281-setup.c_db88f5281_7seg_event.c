
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ db88f5281_7seg ;
 int db88f5281_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void db88f5281_7seg_event(unsigned long data)
{
 static int count = 0;
 writel(0, db88f5281_7seg + (count << 4));
 count = (count + 1) & 7;
 mod_timer(&db88f5281_timer, jiffies + 2 * HZ);
}
