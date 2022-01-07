; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-fm3130.c_fm3130_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-fm3130.c_fm3130_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i64, i32, i32, i8*, i8*, i8*, i8* }
%struct.fm3130 = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"alarm read %02x %02x %02x %02x %02x\0A\00", align 1
@FM3130_ALARM_SECONDS = common dso_local global i64 0, align 8
@FM3130_ALARM_MINUTES = common dso_local global i64 0, align 8
@FM3130_ALARM_HOURS = common dso_local global i64 0, align 8
@FM3130_ALARM_DATE = common dso_local global i64 0, align 8
@FM3130_ALARM_MONTHS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"read alarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @fm3130_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm3130_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.fm3130*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.fm3130* @dev_get_drvdata(%struct.device* %9)
  store %struct.fm3130* %10, %struct.fm3130** %6, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 0
  store %struct.rtc_time* %12, %struct.rtc_time** %8, align 8
  %13 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %14 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @to_i2c_adapter(i32 %18)
  %20 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %21 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = call i32 @i2c_transfer(i32 %19, i32* %23, i32 2)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %150

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %36 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %42 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @FM3130_ALARM_MINUTES, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %48 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @FM3130_ALARM_HOURS, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %54 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @FM3130_ALARM_DATE, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %60 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @FM3130_ALARM_MONTHS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %46, i32 %52, i32 %58, i32 %64)
  %66 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %67 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 127
  %73 = call i8* @bcd2bin(i32 %72)
  %74 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %77 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @FM3130_ALARM_MINUTES, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 127
  %83 = call i8* @bcd2bin(i32 %82)
  %84 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %87 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @FM3130_ALARM_HOURS, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 63
  %93 = call i8* @bcd2bin(i32 %92)
  %94 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %97 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @FM3130_ALARM_DATE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 63
  %103 = call i8* @bcd2bin(i32 %102)
  %104 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %107 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @FM3130_ALARM_MONTHS, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 31
  %113 = call i8* @bcd2bin(i32 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %33
  %122 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %121, %33
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %129 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %128, i32 0, i32 6
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %144 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %147 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %130, i8* %133, i8* %136, i8* %139, i64 %142, i32 %145, i32 %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %126, %27
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.fm3130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_transfer(i32, i32*, i32) #1

declare dso_local i32 @to_i2c_adapter(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
