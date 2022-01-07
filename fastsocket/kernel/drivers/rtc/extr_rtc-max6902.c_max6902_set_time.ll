; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6902.c_max6902_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6902.c_max6902_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6902_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6902_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1900
  %9 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @max6902_set_reg(%struct.device* %11, i32 15, i32 0)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bin2bcd(i32 %16)
  %18 = call i32 @max6902_set_reg(%struct.device* %13, i32 1, i32 %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bin2bcd(i32 %22)
  %24 = call i32 @max6902_set_reg(%struct.device* %19, i32 3, i32 %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bin2bcd(i32 %28)
  %30 = call i32 @max6902_set_reg(%struct.device* %25, i32 5, i32 %29)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bin2bcd(i32 %34)
  %36 = call i32 @max6902_set_reg(%struct.device* %31, i32 7, i32 %35)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @bin2bcd(i32 %41)
  %43 = call i32 @max6902_set_reg(%struct.device* %37, i32 9, i32 %42)
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bin2bcd(i32 %47)
  %49 = call i32 @max6902_set_reg(%struct.device* %44, i32 11, i32 %48)
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 100
  %55 = call i32 @bin2bcd(i32 %54)
  %56 = call i32 @max6902_set_reg(%struct.device* %50, i32 13, i32 %55)
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 100
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = call i32 @max6902_set_reg(%struct.device* %57, i32 19, i32 %62)
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = call i32 @max6902_set_reg(%struct.device* %64, i32 15, i32 128)
  ret i32 0
}

declare dso_local i32 @max6902_set_reg(%struct.device*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
