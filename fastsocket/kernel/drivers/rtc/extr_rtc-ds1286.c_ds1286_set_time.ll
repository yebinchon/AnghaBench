; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1286.c_ds1286_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1286.c_ds1286_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i8, i8, i8, i8 }
%struct.ds1286_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_CMD = common dso_local global i32 0, align 4
@RTC_TE = common dso_local global i8 0, align 1
@RTC_YEAR = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_DATE = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_HUNDREDTH_SECOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1286_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1286_priv*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.ds1286_priv* @dev_get_drvdata(%struct.device* %15)
  store %struct.ds1286_priv* %16, %struct.ds1286_priv** %6, align 8
  %17 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1900
  store i32 %20, i32* %13, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 2
  %28 = load i8, i8* %27, align 4
  store i8 %28, i8* %8, align 1
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %9, align 1
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 4
  %34 = load i8, i8* %33, align 2
  store i8 %34, i8* %10, align 1
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 5
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %11, align 1
  %38 = load i32, i32* %13, align 4
  %39 = icmp ult i32 %38, 1970
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %133

43:                                               ; preds = %2
  %44 = load i32, i32* %13, align 4
  %45 = sub i32 %44, 1940
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ugt i32 %46, 255
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %133

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = icmp uge i32 %52, 100
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = sub i32 %55, 100
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = call i8* @bin2bcd(i32 %59)
  %61 = ptrtoint i8* %60 to i8
  store i8 %61, i8* %11, align 1
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = call i8* @bin2bcd(i32 %63)
  %65 = ptrtoint i8* %64 to i8
  store i8 %65, i8* %10, align 1
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i32
  %68 = call i8* @bin2bcd(i32 %67)
  %69 = ptrtoint i8* %68 to i8
  store i8 %69, i8* %9, align 1
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = call i8* @bin2bcd(i32 %71)
  %73 = ptrtoint i8* %72 to i8
  store i8 %73, i8* %8, align 1
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = call i8* @bin2bcd(i32 %75)
  %77 = ptrtoint i8* %76 to i8
  store i8 %77, i8* %7, align 1
  %78 = load i32, i32* %13, align 4
  %79 = call i8* @bin2bcd(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %82 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %86 = load i32, i32* @RTC_CMD, align 4
  %87 = call zeroext i8 @ds1286_rtc_read(%struct.ds1286_priv* %85, i32 %86)
  store i8 %87, i8* %12, align 1
  %88 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @RTC_TE, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %90, %92
  %94 = trunc i32 %93 to i8
  %95 = load i32, i32* @RTC_CMD, align 4
  %96 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %88, i8 zeroext %94, i32 %95)
  %97 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* @RTC_YEAR, align 4
  %101 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %97, i8 zeroext %99, i32 %100)
  %102 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %103 = load i8, i8* %7, align 1
  %104 = load i32, i32* @RTC_MONTH, align 4
  %105 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %102, i8 zeroext %103, i32 %104)
  %106 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %107 = load i8, i8* %8, align 1
  %108 = load i32, i32* @RTC_DATE, align 4
  %109 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %106, i8 zeroext %107, i32 %108)
  %110 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %111 = load i8, i8* %9, align 1
  %112 = load i32, i32* @RTC_HOURS, align 4
  %113 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %110, i8 zeroext %111, i32 %112)
  %114 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %115 = load i8, i8* %10, align 1
  %116 = load i32, i32* @RTC_MINUTES, align 4
  %117 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %114, i8 zeroext %115, i32 %116)
  %118 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %119 = load i8, i8* %11, align 1
  %120 = load i32, i32* @RTC_SECONDS, align 4
  %121 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %118, i8 zeroext %119, i32 %120)
  %122 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %123 = load i32, i32* @RTC_HUNDREDTH_SECOND, align 4
  %124 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %122, i8 zeroext 0, i32 %123)
  %125 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %126 = load i8, i8* %12, align 1
  %127 = load i32, i32* @RTC_CMD, align 4
  %128 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %125, i8 zeroext %126, i32 %127)
  %129 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %130 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %129, i32 0, i32 0
  %131 = load i64, i64* %14, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %57, %48, %40
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.ds1286_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @ds1286_rtc_read(%struct.ds1286_priv*, i32) #1

declare dso_local i32 @ds1286_rtc_write(%struct.ds1286_priv*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
