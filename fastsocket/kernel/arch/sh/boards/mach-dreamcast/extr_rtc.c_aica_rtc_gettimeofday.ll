; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@AICA_RTC_SECS_H = common dso_local global i32 0, align 4
@AICA_RTC_SECS_L = common dso_local global i32 0, align 4
@TWENTY_YEARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*)* @aica_rtc_gettimeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aica_rtc_gettimeofday(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %7 = call i32 @ctrl_inl(i32 %6)
  %8 = and i32 %7, 65535
  %9 = shl i32 %8, 16
  %10 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %11 = call i32 @ctrl_inl(i32 %10)
  %12 = and i32 %11, 65535
  %13 = or i32 %9, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %16 = call i32 @ctrl_inl(i32 %15)
  %17 = and i32 %16, 65535
  %18 = shl i32 %17, 16
  %19 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %20 = call i32 @ctrl_inl(i32 %19)
  %21 = and i32 %20, 65535
  %22 = or i32 %18, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %5, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @TWENTY_YEARS, align 8
  %31 = sub i64 %29, %30
  %32 = load %struct.timespec*, %struct.timespec** %2, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.timespec*, %struct.timespec** %2, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

declare dso_local i32 @ctrl_inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
