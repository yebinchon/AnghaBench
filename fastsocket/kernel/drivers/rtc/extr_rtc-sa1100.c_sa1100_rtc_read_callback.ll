; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_read_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@RTC_PF = common dso_local global i32 0, align 4
@timer_freq = common dso_local global i64 0, align 8
@rtc_freq = common dso_local global i64 0, align 8
@OSCR = common dso_local global i64 0, align 8
@OSMR1 = common dso_local global i64 0, align 8
@OSSR_M1 = common dso_local global i32 0, align 4
@OSSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sa1100_rtc_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_read_callback(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RTC_PF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load i64, i64* @timer_freq, align 8
  %15 = load i64, i64* @rtc_freq, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @OSCR, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* @OSMR1, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %19, %20
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = shl i64 %24, 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @OSSR_M1, align 4
  store i32 %30, i32* @OSSR, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 %33, %34
  %36 = add i64 %31, %35
  store i64 %36, i64* @OSMR1, align 8
  br label %37

37:                                               ; preds = %42, %13
  %38 = load i64, i64* @OSMR1, align 8
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* @OSCR, align 8
  %40 = sub i64 %38, %39
  %41 = icmp sle i64 %40, 8
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 256
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @OSSR_M1, align 4
  store i32 %45, i32* @OSSR, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* @OSMR1, align 8
  br label %37

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
