; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_mmtimer_setup_int_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_mmtimer_setup_int_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SH_RTC2_INT_ENABLE = common dso_local global i32 0, align 4
@SH_INT_CMPC = common dso_local global i32 0, align 4
@SGI_MMTIMER_VECTOR = common dso_local global i64 0, align 8
@SH_RTC2_INT_CONFIG_IDX_SHFT = common dso_local global i64 0, align 8
@SH_RTC2_INT_CONFIG_PID_SHFT = common dso_local global i64 0, align 8
@SH_RTC2_INT_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @mmtimer_setup_int_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmtimer_setup_int_1(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @SH_RTC2_INT_ENABLE, align 4
  %7 = call i64 @LOCAL_MMR_ADDR(i32 %6)
  %8 = inttoptr i64 %7 to i64*
  %9 = call i32 @HUB_S(i64* %8, i64 0)
  %10 = load i32, i32* @SH_INT_CMPC, align 4
  %11 = call i64 @LOCAL_MMR_ADDR(i32 %10)
  %12 = inttoptr i64 %11 to i64*
  %13 = call i32 @HUB_S(i64* %12, i64 -1)
  %14 = call i32 @mmtimer_clr_int_pending(i32 1)
  %15 = load i64, i64* @SGI_MMTIMER_VECTOR, align 8
  %16 = load i64, i64* @SH_RTC2_INT_CONFIG_IDX_SHFT, align 8
  %17 = shl i64 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @cpu_physical_id(i32 %18)
  %20 = load i64, i64* @SH_RTC2_INT_CONFIG_PID_SHFT, align 8
  %21 = shl i64 %19, %20
  %22 = or i64 %17, %21
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @SH_RTC2_INT_CONFIG, align 4
  %24 = call i64 @LOCAL_MMR_ADDR(i32 %23)
  %25 = inttoptr i64 %24 to i64*
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @HUB_S(i64* %25, i64 %26)
  %28 = load i32, i32* @SH_RTC2_INT_ENABLE, align 4
  %29 = call i64 @LOCAL_MMR_ADDR(i32 %28)
  %30 = inttoptr i64 %29 to i64*
  %31 = call i32 @HUB_S(i64* %30, i64 1)
  %32 = load i32, i32* @SH_INT_CMPC, align 4
  %33 = call i64 @LOCAL_MMR_ADDR(i32 %32)
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @HUB_S(i64* %34, i64 %35)
  ret void
}

declare dso_local i32 @HUB_S(i64*, i64) #1

declare dso_local i64 @LOCAL_MMR_ADDR(i32) #1

declare dso_local i32 @mmtimer_clr_int_pending(i32) #1

declare dso_local i64 @cpu_physical_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
