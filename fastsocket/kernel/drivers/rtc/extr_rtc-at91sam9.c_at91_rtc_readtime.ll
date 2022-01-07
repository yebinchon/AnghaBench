; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_readtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_readtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i64 }
%struct.sam9_rtc = type { i32 }

@EILSEQ = common dso_local global i32 0, align 4
@VR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: %4d-%02d-%02d %02d:%02d:%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"readtime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @at91_rtc_readtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_readtime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.sam9_rtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.sam9_rtc* %11, %struct.sam9_rtc** %6, align 8
  %12 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %13 = call i64 @gpbr_readl(%struct.sam9_rtc* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EILSEQ, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %21 = load i32, i32* @VR, align 4
  %22 = call i64 @rtt_readl(%struct.sam9_rtc* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %24 = load i32, i32* @VR, align 4
  %25 = call i64 @rtt_readl(%struct.sam9_rtc* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %31 = load i32, i32* @VR, align 4
  %32 = call i64 @rtt_readl(%struct.sam9_rtc* %30, i32 %31)
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %19
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = call i32 @rtc_time_to_tm(i64 %36, %struct.rtc_time* %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 1900, %42
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %33, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @gpbr_readl(%struct.sam9_rtc*) #1

declare dso_local i64 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
