; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8, i8, i8, i8 }
%struct.cmos_rtc = type { i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i64 0, align 8
@RTC_MINUTES_ALARM = common dso_local global i64 0, align 8
@RTC_SECONDS_ALARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cmos_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cmos_rtc*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.cmos_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.cmos_rtc* %13, %struct.cmos_rtc** %6, align 8
  %14 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @is_valid_irq(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %157

22:                                               ; preds = %2
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %7, align 1
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 12
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i8, i8* %7, align 1
  %34 = call i32 @bin2bcd(i8 zeroext %33)
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 255, %35 ]
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 4
  store i8 %42, i8* %8, align 1
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i8, i8* %8, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sle i32 %48, 31
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8, i8* %8, align 1
  %52 = call i32 @bin2bcd(i8 zeroext %51)
  br label %54

53:                                               ; preds = %46, %36
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 255, %53 ]
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %8, align 1
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %9, align 1
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 24
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i8, i8* %9, align 1
  %66 = call i32 @bin2bcd(i8 zeroext %65)
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 255, %67 ]
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %9, align 1
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i8, i8* %73, align 2
  store i8 %74, i8* %10, align 1
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp slt i32 %76, 60
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i8, i8* %10, align 1
  %80 = call i32 @bin2bcd(i8 zeroext %79)
  br label %82

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 255, %81 ]
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %10, align 1
  %85 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %11, align 1
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp slt i32 %90, 60
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i8, i8* %11, align 1
  %94 = call i32 @bin2bcd(i8 zeroext %93)
  br label %96

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i32 [ %94, %92 ], [ 255, %95 ]
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %11, align 1
  %99 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %100 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %101 = load i32, i32* @RTC_AIE, align 4
  %102 = call i32 @cmos_irq_disable(%struct.cmos_rtc* %100, i32 %101)
  %103 = load i8, i8* %9, align 1
  %104 = load i64, i64* @RTC_HOURS_ALARM, align 8
  %105 = call i32 @CMOS_WRITE(i8 zeroext %103, i64 %104)
  %106 = load i8, i8* %10, align 1
  %107 = load i64, i64* @RTC_MINUTES_ALARM, align 8
  %108 = call i32 @CMOS_WRITE(i8 zeroext %106, i64 %107)
  %109 = load i8, i8* %11, align 1
  %110 = load i64, i64* @RTC_SECONDS_ALARM, align 8
  %111 = call i32 @CMOS_WRITE(i8 zeroext %109, i64 %110)
  %112 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %113 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %96
  %117 = load i8, i8* %8, align 1
  %118 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %119 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @CMOS_WRITE(i8 zeroext %117, i64 %120)
  %122 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %123 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load i8, i8* %7, align 1
  %128 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %129 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @CMOS_WRITE(i8 zeroext %127, i64 %130)
  br label %132

132:                                              ; preds = %126, %116
  br label %133

133:                                              ; preds = %132, %96
  %134 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %135 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i8, i8* %136, align 1
  %138 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %139 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i8, i8* %140, align 2
  %142 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %143 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 4
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @hpet_set_alarm_time(i8 zeroext %137, i8 zeroext %141, i8 zeroext %145)
  %147 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %148 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %133
  %152 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %153 = load i32, i32* @RTC_AIE, align 4
  %154 = call i32 @cmos_irq_enable(%struct.cmos_rtc* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %133
  %156 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %19
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.cmos_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @is_valid_irq(i32) #1

declare dso_local i32 @bin2bcd(i8 zeroext) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cmos_irq_disable(%struct.cmos_rtc*, i32) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i64) #1

declare dso_local i32 @hpet_set_alarm_time(i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @cmos_irq_enable(%struct.cmos_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
