; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.sam9_rtc = type { i32 }

@EILSEQ = common dso_local global i32 0, align 4
@MR = common dso_local global i32 0, align 4
@AT91_RTT_ALMIEN = common dso_local global i64 0, align 8
@AR = common dso_local global i32 0, align 4
@ALARM_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: %4d-%02d-%02d %02d:%02d:%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"setalarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @at91_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sam9_rtc*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.sam9_rtc* %13, %struct.sam9_rtc** %6, align 8
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  store %struct.rtc_time* %15, %struct.rtc_time** %7, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %17 = call i32 @rtc_tm_to_time(%struct.rtc_time* %16, i64* %8)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %3, align 4
  br label %88

22:                                               ; preds = %2
  %23 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %24 = call i64 @gpbr_readl(%struct.sam9_rtc* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EILSEQ, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %88

30:                                               ; preds = %22
  %31 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %32 = load i32, i32* @MR, align 4
  %33 = call i64 @rtt_readl(%struct.sam9_rtc* %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %35 = load i32, i32* @MR, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @AT91_RTT_ALMIEN, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = call i32 @rtt_writel(%struct.sam9_rtc* %34, i32 %35, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %46 = load i32, i32* @AR, align 4
  %47 = load i64, i64* @ALARM_DISABLED, align 8
  %48 = call i32 @rtt_writel(%struct.sam9_rtc* %45, i32 %46, i64 %47)
  store i32 0, i32* %3, align 4
  br label %88

49:                                               ; preds = %30
  %50 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %51 = load i32, i32* @AR, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @rtt_writel(%struct.sam9_rtc* %50, i32 %51, i64 %54)
  %56 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %62 = load i32, i32* @MR, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @AT91_RTT_ALMIEN, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @rtt_writel(%struct.sam9_rtc* %61, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %60, %49
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %67, %44, %27, %20
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i64 @gpbr_readl(%struct.sam9_rtc*) #1

declare dso_local i64 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @rtt_writel(%struct.sam9_rtc*, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
