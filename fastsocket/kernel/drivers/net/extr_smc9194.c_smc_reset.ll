; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc9194.c_smc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc9194.c_smc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RCR_SOFTRESET = common dso_local global i32 0, align 4
@RCR = common dso_local global i64 0, align 8
@RCR_CLEAR = common dso_local global i32 0, align 4
@TCR_CLEAR = common dso_local global i32 0, align 4
@TCR = common dso_local global i64 0, align 8
@CONTROL = common dso_local global i64 0, align 8
@CTL_AUTO_RELEASE = common dso_local global i32 0, align 4
@MC_RESET = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @smc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @SMC_SELECT_BANK(i32 0)
  %4 = load i32, i32* @RCR_SOFTRESET, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @RCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outw(i32 %4, i64 %8)
  %10 = call i32 (...) @SMC_DELAY()
  %11 = load i32, i32* @RCR_CLEAR, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @RCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outw(i32 %11, i64 %15)
  %17 = load i32, i32* @TCR_CLEAR, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @TCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outw(i32 %17, i64 %21)
  %23 = call i32 @SMC_SELECT_BANK(i32 1)
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @CONTROL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inw(i64 %27)
  %29 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @CONTROL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 %30, i64 %34)
  %36 = call i32 @SMC_SELECT_BANK(i32 2)
  %37 = load i32, i32* @MC_RESET, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @MMU_CMD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i32 %37, i64 %41)
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @INT_MASK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 0, i64 %46)
  ret void
}

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @SMC_DELAY(...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
