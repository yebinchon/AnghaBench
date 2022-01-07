; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i64 }
%struct.sam9_rtc = type { i32 }

@AR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ALARM_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: %4d-%02d-%02d %02d:%02d:%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"readalarm\00", align 1
@MR = common dso_local global i32 0, align 4
@AT91_RTT_ALMIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @at91_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sam9_rtc*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.sam9_rtc* %11, %struct.sam9_rtc** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %15 = load i32, i32* @AR, align 4
  %16 = call i32 @rtt_readl(%struct.sam9_rtc* %14, i32 %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %19 = call i64 @gpbr_readl(%struct.sam9_rtc* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EILSEQ, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %72

25:                                               ; preds = %2
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = call i32 @memset(%struct.rtc_wkalrm* %26, i32 0, i32 8)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @ALARM_DISABLED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %39 = call i32 @rtc_time_to_tm(i64 %37, %struct.rtc_time* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 1900, %43
  %45 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %62 = load i32, i32* @MR, align 4
  %63 = call i32 @rtt_readl(%struct.sam9_rtc* %61, i32 %62)
  %64 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %34
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %34
  br label %71

71:                                               ; preds = %70, %31, %25
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i64 @gpbr_readl(%struct.sam9_rtc*) #1

declare dso_local i32 @memset(%struct.rtc_wkalrm*, i32, i32) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
