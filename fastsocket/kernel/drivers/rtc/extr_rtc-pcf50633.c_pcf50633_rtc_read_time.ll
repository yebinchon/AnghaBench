; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.pcf50633_rtc = type { i32 }
%struct.pcf50633_time = type { i32* }

@PCF50633_REG_RTCSC = common dso_local global i32 0, align 4
@PCF50633_TI_EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to read time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PCF_TIME: %02x.%02x.%02x %02x:%02x:%02x\0A\00", align 1
@PCF50633_TI_DAY = common dso_local global i64 0, align 8
@PCF50633_TI_MONTH = common dso_local global i64 0, align 8
@PCF50633_TI_YEAR = common dso_local global i64 0, align 8
@PCF50633_TI_HOUR = common dso_local global i64 0, align 8
@PCF50633_TI_MIN = common dso_local global i64 0, align 8
@PCF50633_TI_SEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"RTC_TIME: %u.%u.%u %u:%u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf50633_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.pcf50633_rtc*, align 8
  %7 = alloca %struct.pcf50633_time, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf50633_rtc* %10, %struct.pcf50633_rtc** %6, align 8
  %11 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %6, align 8
  %12 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCF50633_REG_RTCSC, align 4
  %15 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %16 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @pcf50633_read_block(i32 %13, i32 %14, i32 %15, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @PCF50633_TI_DAY, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @PCF50633_TI_MONTH, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @PCF50633_TI_YEAR, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @PCF50633_TI_HOUR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @PCF50633_TI_MIN, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %7, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @PCF50633_TI_SEC, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59)
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = call i32 @pcf2rtc_time(%struct.rtc_time* %61, %struct.pcf50633_time* %7)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = call i32 @rtc_valid_tm(%struct.rtc_time* %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %28, %23
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pcf50633_read_block(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcf2rtc_time(%struct.rtc_time*, %struct.pcf50633_time*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
