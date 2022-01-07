; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.platform_device = type { i32 }
%struct.pcap_rtc = type { i32 }

@PCAP_REG_RTC_TOD = common dso_local global i32 0, align 4
@PCAP_RTC_TOD_MASK = common dso_local global i64 0, align 8
@PCAP_REG_RTC_DAY = common dso_local global i32 0, align 4
@PCAP_RTC_DAY_MASK = common dso_local global i64 0, align 8
@SEC_PER_DAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcap_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.pcap_rtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call %struct.pcap_rtc* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.pcap_rtc* %13, %struct.pcap_rtc** %6, align 8
  %14 = load %struct.pcap_rtc*, %struct.pcap_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCAP_REG_RTC_TOD, align 4
  %18 = call i32 @ezx_pcap_read(i32 %16, i32 %17, i64* %8)
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PCAP_RTC_TOD_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.pcap_rtc*, %struct.pcap_rtc** %6, align 8
  %23 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCAP_REG_RTC_DAY, align 4
  %26 = call i32 @ezx_pcap_read(i32 %24, i32 %25, i64* %9)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @PCAP_RTC_DAY_MASK, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @SEC_PER_DAY, align 8
  %31 = mul i64 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = call i32 @rtc_time_to_tm(i64 %34, %struct.rtc_time* %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = call i32 @rtc_valid_tm(%struct.rtc_time* %37)
  ret i32 %38
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.pcap_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ezx_pcap_read(i32, i32, i64*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
