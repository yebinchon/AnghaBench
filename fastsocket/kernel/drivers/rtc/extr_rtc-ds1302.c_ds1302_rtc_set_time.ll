; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1302.c_ds1302_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1302.c_ds1302_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_ADDR_SEC = common dso_local global i32 0, align 4
@RTC_ADDR_MIN = common dso_local global i32 0, align 4
@RTC_ADDR_HOUR = common dso_local global i32 0, align 4
@RTC_ADDR_DAY = common dso_local global i32 0, align 4
@RTC_ADDR_DATE = common dso_local global i32 0, align 4
@RTC_ADDR_MON = common dso_local global i32 0, align 4
@RTC_ADDR_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1302_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1302_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load i32, i32* @RTC_ADDR_SEC, align 4
  %6 = load i32, i32* @RTC_ADDR_SEC, align 4
  %7 = call i32 @ds1302_readbyte(i32 %6)
  %8 = or i32 %7, 128
  %9 = call i32 @ds1302_writebyte(i32 %5, i32 %8)
  %10 = load i32, i32* @RTC_ADDR_SEC, align 4
  %11 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bin2bcd(i32 %13)
  %15 = call i32 @ds1302_writebyte(i32 %10, i32 %14)
  %16 = load i32, i32* @RTC_ADDR_MIN, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bin2bcd(i32 %19)
  %21 = call i32 @ds1302_writebyte(i32 %16, i32 %20)
  %22 = load i32, i32* @RTC_ADDR_HOUR, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bin2bcd(i32 %25)
  %27 = call i32 @ds1302_writebyte(i32 %22, i32 %26)
  %28 = load i32, i32* @RTC_ADDR_DAY, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bin2bcd(i32 %31)
  %33 = call i32 @ds1302_writebyte(i32 %28, i32 %32)
  %34 = load i32, i32* @RTC_ADDR_DATE, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bin2bcd(i32 %37)
  %39 = call i32 @ds1302_writebyte(i32 %34, i32 %38)
  %40 = load i32, i32* @RTC_ADDR_MON, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @bin2bcd(i32 %44)
  %46 = call i32 @ds1302_writebyte(i32 %40, i32 %45)
  %47 = load i32, i32* @RTC_ADDR_YEAR, align 4
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = srem i32 %50, 100
  %52 = call i32 @bin2bcd(i32 %51)
  %53 = call i32 @ds1302_writebyte(i32 %47, i32 %52)
  %54 = load i32, i32* @RTC_ADDR_SEC, align 4
  %55 = load i32, i32* @RTC_ADDR_SEC, align 4
  %56 = call i32 @ds1302_readbyte(i32 %55)
  %57 = and i32 %56, -129
  %58 = call i32 @ds1302_writebyte(i32 %54, i32 %57)
  ret i32 0
}

declare dso_local i32 @ds1302_writebyte(i32, i32) #1

declare dso_local i32 @ds1302_readbyte(i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
