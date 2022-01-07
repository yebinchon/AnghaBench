; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i64 }
%struct.sam9_rtc = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: %4d-%02d-%02d %02d:%02d:%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"settime\00", align 1
@MR = common dso_local global i32 0, align 4
@AT91_RTT_ALMIEN = common dso_local global i64 0, align 8
@AT91_RTT_RTTINCIEN = common dso_local global i64 0, align 8
@AR = common dso_local global i32 0, align 4
@ALARM_DISABLED = common dso_local global i64 0, align 8
@AT91_RTT_RTTRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @at91_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.sam9_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.sam9_rtc* %13, %struct.sam9_rtc** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 1900, %17
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = call i32 @rtc_tm_to_time(%struct.rtc_time* %35, i64* %11)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %108

41:                                               ; preds = %2
  %42 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %43 = load i32, i32* @MR, align 4
  %44 = call i64 @rtt_readl(%struct.sam9_rtc* %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %46 = load i32, i32* @MR, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @AT91_RTT_ALMIEN, align 8
  %49 = load i64, i64* @AT91_RTT_RTTINCIEN, align 8
  %50 = or i64 %48, %49
  %51 = xor i64 %50, -1
  %52 = and i64 %47, %51
  %53 = call i32 @rtt_writel(%struct.sam9_rtc* %45, i32 %46, i64 %52)
  %54 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %55 = call i64 @gpbr_readl(%struct.sam9_rtc* %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @gpbr_writel(%struct.sam9_rtc* %58, i64 %59)
  %61 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %62 = load i32, i32* @AR, align 4
  %63 = call i64 @rtt_readl(%struct.sam9_rtc* %61, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @ALARM_DISABLED, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %41
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %72, %73
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %96

77:                                               ; preds = %67
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %11, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %8, align 8
  %86 = sub i64 %84, %85
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %9, align 8
  br label %95

89:                                               ; preds = %77
  %90 = load i64, i64* @ALARM_DISABLED, align 8
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* @AT91_RTT_ALMIEN, align 8
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %10, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95, %71
  %97 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %98 = load i32, i32* @AR, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @rtt_writel(%struct.sam9_rtc* %97, i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %41
  %102 = load %struct.sam9_rtc*, %struct.sam9_rtc** %6, align 8
  %103 = load i32, i32* @MR, align 4
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @AT91_RTT_RTTRST, align 8
  %106 = or i64 %104, %105
  %107 = call i32 @rtt_writel(%struct.sam9_rtc* %102, i32 %103, i64 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %39
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i64 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @rtt_writel(%struct.sam9_rtc*, i32, i64) #1

declare dso_local i64 @gpbr_readl(%struct.sam9_rtc*) #1

declare dso_local i32 @gpbr_writel(%struct.sam9_rtc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
