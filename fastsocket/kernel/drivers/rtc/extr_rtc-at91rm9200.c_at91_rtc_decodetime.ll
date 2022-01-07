; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91rm9200.c_at91_rtc_decodetime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at91rm9200.c_at91_rtc_decodetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@AT91_RTC_SEC = common dso_local global i32 0, align 4
@AT91_RTC_MIN = common dso_local global i32 0, align 4
@AT91_RTC_HOUR = common dso_local global i32 0, align 4
@AT91_RTC_CENT = common dso_local global i32 0, align 4
@AT91_RTC_YEAR = common dso_local global i32 0, align 4
@AT91_RTC_DAY = common dso_local global i32 0, align 4
@AT91_RTC_MONTH = common dso_local global i32 0, align 4
@AT91_RTC_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.rtc_time*)* @at91_rtc_decodetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_rtc_decodetime(i32 %0, i32 %1, %struct.rtc_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_time*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rtc_time* %2, %struct.rtc_time** %6, align 8
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @at91_sys_read(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @at91_sys_read(i32 %12)
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @at91_sys_read(i32 %16)
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @at91_sys_read(i32 %21)
  %23 = icmp ne i32 %20, %22
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %9, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AT91_RTC_SEC, align 4
  %29 = and i32 %27, %28
  %30 = lshr i32 %29, 0
  %31 = call i32 @bcd2bin(i32 %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AT91_RTC_MIN, align 4
  %36 = and i32 %34, %35
  %37 = lshr i32 %36, 8
  %38 = call i32 @bcd2bin(i32 %37)
  %39 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @AT91_RTC_HOUR, align 4
  %43 = and i32 %41, %42
  %44 = lshr i32 %43, 16
  %45 = call i32 @bcd2bin(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @AT91_RTC_CENT, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @bcd2bin(i32 %50)
  %52 = mul nsw i32 %51, 100
  %53 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @AT91_RTC_YEAR, align 4
  %57 = and i32 %55, %56
  %58 = lshr i32 %57, 8
  %59 = call i32 @bcd2bin(i32 %58)
  %60 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @AT91_RTC_DAY, align 4
  %66 = and i32 %64, %65
  %67 = lshr i32 %66, 21
  %68 = call i32 @bcd2bin(i32 %67)
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @AT91_RTC_MONTH, align 4
  %74 = and i32 %72, %73
  %75 = lshr i32 %74, 16
  %76 = call i32 @bcd2bin(i32 %75)
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @AT91_RTC_DATE, align 4
  %82 = and i32 %80, %81
  %83 = lshr i32 %82, 24
  %84 = call i32 @bcd2bin(i32 %83)
  %85 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  ret void
}

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
