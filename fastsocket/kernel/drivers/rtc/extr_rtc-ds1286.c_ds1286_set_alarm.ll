; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1286.c_ds1286_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1286.c_ds1286_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8, i8 }
%struct.ds1286_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i32 0, align 4
@RTC_MINUTES_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1286_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1286_priv*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ds1286_priv* @dev_get_drvdata(%struct.device* %10)
  store %struct.ds1286_priv* %11, %struct.ds1286_priv** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %7, align 1
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %8, align 1
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sge i32 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i8 -1, i8* %7, align 1
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 60
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8 -1, i8* %8, align 1
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %59

40:                                               ; preds = %33
  %41 = load i8, i8* %8, align 1
  %42 = call zeroext i8 @bin2bcd(i8 zeroext %41)
  store i8 %42, i8* %8, align 1
  %43 = load i8, i8* %7, align 1
  %44 = call zeroext i8 @bin2bcd(i8 zeroext %43)
  store i8 %44, i8* %7, align 1
  %45 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %46 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %49 = load i8, i8* %7, align 1
  %50 = load i32, i32* @RTC_HOURS_ALARM, align 4
  %51 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %48, i8 zeroext %49, i32 %50)
  %52 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %53 = load i8, i8* %8, align 1
  %54 = load i32, i32* @RTC_MINUTES_ALARM, align 4
  %55 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %52, i8 zeroext %53, i32 %54)
  %56 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %40, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ds1286_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local zeroext i8 @bin2bcd(i8 zeroext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ds1286_rtc_write(%struct.ds1286_priv*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
