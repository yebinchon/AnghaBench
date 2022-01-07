; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_twl4030_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_twl4030_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@ALL_TIME_REGS = common dso_local global i32 0, align 4
@TWL4030_MODULE_RTC = common dso_local global i32 0, align 4
@REG_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rtc_set_alarm error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @twl4030_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load i32, i32* @ALL_TIME_REGS, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @twl4030_rtc_alarm_irq_enable(%struct.device* %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call zeroext i8 @bin2bcd(i64 %22)
  %24 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call zeroext i8 @bin2bcd(i64 %28)
  %30 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 %29, i8* %30, align 2
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call zeroext i8 @bin2bcd(i64 %34)
  %36 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %35, i8* %36, align 1
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call zeroext i8 @bin2bcd(i64 %40)
  %42 = getelementptr inbounds i8, i8* %12, i64 4
  store i8 %41, i8* %42, align 4
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call zeroext i8 @bin2bcd(i64 %47)
  %49 = getelementptr inbounds i8, i8* %12, i64 5
  store i8 %48, i8* %49, align 1
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 100
  %55 = call zeroext i8 @bin2bcd(i64 %54)
  %56 = getelementptr inbounds i8, i8* %12, i64 6
  store i8 %55, i8* %56, align 2
  %57 = load i32, i32* @TWL4030_MODULE_RTC, align 4
  %58 = load i32, i32* @REG_ALARM_SECONDS_REG, align 4
  %59 = load i32, i32* @ALL_TIME_REGS, align 4
  %60 = call i32 @twl4030_i2c_write(i32 %57, i8* %12, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %18
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %76

67:                                               ; preds = %18
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call i32 @twl4030_rtc_alarm_irq_enable(%struct.device* %73, i32 1)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %63, %17
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @twl4030_rtc_alarm_irq_enable(%struct.device*, i32) #2

declare dso_local zeroext i8 @bin2bcd(i64) #2

declare dso_local i32 @twl4030_i2c_write(i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
