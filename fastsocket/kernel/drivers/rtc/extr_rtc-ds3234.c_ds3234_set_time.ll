; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds3234.c_ds3234_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds3234.c_ds3234_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@DS3234_REG_SECONDS = common dso_local global i32 0, align 4
@DS3234_REG_MINUTES = common dso_local global i32 0, align 4
@DS3234_REG_HOURS = common dso_local global i32 0, align 4
@DS3234_REG_DAY = common dso_local global i32 0, align 4
@DS3234_REG_DATE = common dso_local global i32 0, align 4
@DS3234_REG_MONTH = common dso_local global i32 0, align 4
@DS3234_REG_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds3234_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3234_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @DS3234_REG_SECONDS, align 4
  %7 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bin2bcd(i32 %9)
  %11 = call i32 @ds3234_set_reg(%struct.device* %5, i32 %6, i32 %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load i32, i32* @DS3234_REG_MINUTES, align 4
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bin2bcd(i32 %16)
  %18 = call i32 @ds3234_set_reg(%struct.device* %12, i32 %13, i32 %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* @DS3234_REG_HOURS, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bin2bcd(i32 %23)
  %25 = and i32 %24, 63
  %26 = call i32 @ds3234_set_reg(%struct.device* %19, i32 %20, i32 %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* @DS3234_REG_DAY, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = call i32 @ds3234_set_reg(%struct.device* %27, i32 %28, i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load i32, i32* @DS3234_REG_DATE, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bin2bcd(i32 %39)
  %41 = call i32 @ds3234_set_reg(%struct.device* %35, i32 %36, i32 %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load i32, i32* @DS3234_REG_MONTH, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @bin2bcd(i32 %47)
  %49 = call i32 @ds3234_set_reg(%struct.device* %42, i32 %43, i32 %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 100
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 100
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %2
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load i32, i32* @DS3234_REG_YEAR, align 4
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bin2bcd(i32 %64)
  %66 = call i32 @ds3234_set_reg(%struct.device* %60, i32 %61, i32 %65)
  ret i32 0
}

declare dso_local i32 @ds3234_set_reg(%struct.device*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
