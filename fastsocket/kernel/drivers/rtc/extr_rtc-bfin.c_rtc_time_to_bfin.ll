; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_rtc_time_to_bfin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bfin.c_rtc_time_to_bfin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_BITS_OFF = common dso_local global i32 0, align 4
@MIN_BITS_OFF = common dso_local global i32 0, align 4
@HOUR_BITS_OFF = common dso_local global i32 0, align 4
@DAY_BITS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @rtc_time_to_bfin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_time_to_bfin(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = urem i64 %7, 60
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* %2, align 8
  %11 = urem i64 %10, 3600
  %12 = udiv i64 %11, 60
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* %2, align 8
  %15 = urem i64 %14, 86400
  %16 = udiv i64 %15, 3600
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* %2, align 8
  %19 = udiv i64 %18, 86400
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SEC_BITS_OFF, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MIN_BITS_OFF, align 4
  %26 = shl i32 %24, %25
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HOUR_BITS_OFF, align 4
  %30 = shl i32 %28, %29
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DAY_BITS_OFF, align 4
  %34 = shl i32 %32, %33
  %35 = add nsw i32 %31, %34
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
