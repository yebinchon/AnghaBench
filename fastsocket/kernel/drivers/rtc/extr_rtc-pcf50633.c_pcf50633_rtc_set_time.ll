; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.pcf50633_rtc = type { i32 }
%struct.pcf50633_time = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"RTC_TIME: %u.%u.%u %u:%u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\0A\00", align 1
@PCF50633_TI_DAY = common dso_local global i64 0, align 8
@PCF50633_TI_MONTH = common dso_local global i64 0, align 8
@PCF50633_TI_YEAR = common dso_local global i64 0, align 8
@PCF50633_TI_HOUR = common dso_local global i64 0, align 8
@PCF50633_TI_MIN = common dso_local global i64 0, align 8
@PCF50633_TI_SEC = common dso_local global i64 0, align 8
@PCF50633_IRQ_SECOND = common dso_local global i32 0, align 4
@PCF50633_IRQ_ALARM = common dso_local global i32 0, align 4
@PCF50633_REG_RTCSC = common dso_local global i32 0, align 4
@PCF50633_TI_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf50633_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.pcf50633_rtc*, align 8
  %6 = alloca %struct.pcf50633_time, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.pcf50633_rtc* %11, %struct.pcf50633_rtc** %5, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = call i32 @rtc2pcf_time(%struct.pcf50633_time* %6, %struct.rtc_time* %32)
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @PCF50633_TI_DAY, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @PCF50633_TI_MONTH, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @PCF50633_TI_YEAR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @PCF50633_TI_HOUR, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @PCF50633_TI_MIN, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PCF50633_TI_SEC, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64)
  %66 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %67 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PCF50633_IRQ_SECOND, align 4
  %70 = call i32 @pcf50633_irq_mask_get(i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %72 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %75 = call i32 @pcf50633_irq_mask_get(i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %2
  %79 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %80 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PCF50633_IRQ_SECOND, align 4
  %83 = call i32 @pcf50633_irq_mask(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %2
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %89 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %92 = call i32 @pcf50633_irq_mask(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %84
  %94 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %95 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PCF50633_REG_RTCSC, align 4
  %98 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %99 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = call i32 @pcf50633_write_block(i32 %96, i32 %97, i32 %98, i32* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %93
  %106 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %107 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PCF50633_IRQ_SECOND, align 4
  %110 = call i32 @pcf50633_irq_unmask(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %93
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %116 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %119 = call i32 @pcf50633_irq_unmask(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtc2pcf_time(%struct.pcf50633_time*, %struct.rtc_time*) #1

declare dso_local i32 @pcf50633_irq_mask_get(i32, i32) #1

declare dso_local i32 @pcf50633_irq_mask(i32, i32) #1

declare dso_local i32 @pcf50633_write_block(i32, i32, i32, i32*) #1

declare dso_local i32 @pcf50633_irq_unmask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
