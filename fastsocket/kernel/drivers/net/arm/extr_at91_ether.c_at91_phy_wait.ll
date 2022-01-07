; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91_phy_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91_phy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@AT91_EMAC_SR = common dso_local global i32 0, align 4
@AT91_EMAC_SR_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"at91_ether: MIO timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @at91_phy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_phy_wait() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @jiffies, align 4
  %3 = add nsw i32 %2, 2
  %4 = sext i32 %3 to i64
  store i64 %4, i64* %1, align 8
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* @AT91_EMAC_SR, align 4
  %7 = call i32 @at91_emac_read(i32 %6)
  %8 = load i32, i32* @AT91_EMAC_SR_IDLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = load i32, i32* @jiffies, align 4
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @time_after(i32 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %21

19:                                               ; preds = %12
  %20 = call i32 (...) @cpu_relax()
  br label %5

21:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @at91_emac_read(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
