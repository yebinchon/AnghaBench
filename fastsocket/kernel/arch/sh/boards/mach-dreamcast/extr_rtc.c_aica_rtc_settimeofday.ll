; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_settimeofday.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWENTY_YEARS = common dso_local global i64 0, align 8
@AICA_RTC_SECS_H = common dso_local global i32 0, align 4
@AICA_RTC_SECS_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @aica_rtc_settimeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aica_rtc_settimeofday(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @TWENTY_YEARS, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %10, 4294901760
  %12 = lshr i64 %11, 16
  %13 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %14 = call i32 @ctrl_outl(i64 %12, i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, 65535
  %17 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %18 = call i32 @ctrl_outl(i64 %16, i32 %17)
  %19 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %20 = call i32 @ctrl_inl(i32 %19)
  %21 = and i32 %20, 65535
  %22 = shl i32 %21, 16
  %23 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %24 = call i32 @ctrl_inl(i32 %23)
  %25 = and i32 %24, 65535
  %26 = or i32 %22, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %3, align 8
  %28 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %29 = call i32 @ctrl_inl(i32 %28)
  %30 = and i32 %29, 65535
  %31 = shl i32 %30, 16
  %32 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %33 = call i32 @ctrl_inl(i32 %32)
  %34 = and i32 %33, 65535
  %35 = or i32 %31, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %9
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %9, label %41

41:                                               ; preds = %37
  ret i32 0
}

declare dso_local i32 @ctrl_outl(i64, i32) #1

declare dso_local i32 @ctrl_inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
