; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc9194.c_smc_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc9194.c_smc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MASK = common dso_local global i64 0, align 8
@RCR_CLEAR = common dso_local global i32 0, align 4
@RCR = common dso_local global i64 0, align 8
@TCR_CLEAR = common dso_local global i32 0, align 4
@TCR = common dso_local global i64 0, align 8
@CONTROL = common dso_local global i64 0, align 8
@CTL_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @smc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @SMC_SELECT_BANK(i32 2)
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i64, i64* @INT_MASK, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outb(i32 0, i64 %7)
  %9 = call i32 @SMC_SELECT_BANK(i32 0)
  %10 = load i32, i32* @RCR_CLEAR, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @RCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 %10, i64 %14)
  %16 = load i32, i32* @TCR_CLEAR, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @TCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %16, i64 %20)
  ret void
}

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
