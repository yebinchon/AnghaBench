; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.pcf50633_rtc = type { i64, i32 }
%struct.pcf50633_time = type { i32* }

@PCF50633_TI_WKDAY = common dso_local global i64 0, align 8
@PCF50633_IRQ_ALARM = common dso_local global i32 0, align 4
@PCF50633_REG_RTCSCA = common dso_local global i32 0, align 4
@PCF50633_TI_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcf50633_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pcf50633_rtc*, align 8
  %6 = alloca %struct.pcf50633_time, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf50633_rtc* %10, %struct.pcf50633_rtc** %5, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = call i32 @rtc2pcf_time(%struct.pcf50633_time* %6, i32* %12)
  %14 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @PCF50633_TI_WKDAY, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 7, i32* %17, align 4
  %18 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %19 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %22 = call i32 @pcf50633_irq_mask_get(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %30 = call i32 @pcf50633_irq_mask(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %33 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCF50633_REG_RTCSCA, align 4
  %36 = load i32, i32* @PCF50633_TI_EXTENT, align 4
  %37 = getelementptr inbounds %struct.pcf50633_time, %struct.pcf50633_time* %6, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @pcf50633_write_block(i32 %34, i32 %35, i32 %36, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %31
  %49 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %50 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %53 = call i32 @pcf50633_irq_unmask(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %5, align 8
  %59 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.pcf50633_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc2pcf_time(%struct.pcf50633_time*, i32*) #1

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
