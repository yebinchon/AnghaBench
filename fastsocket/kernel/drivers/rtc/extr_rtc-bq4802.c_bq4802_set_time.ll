; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bq4802.c_bq4802_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bq4802.c_bq4802_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.bq4802 = type { i32 (%struct.bq4802*, i32)*, i32, i32 (%struct.bq4802*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bq4802_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq4802_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.bq4802*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call %struct.platform_device* @to_platform_device(%struct.device* %17)
  store %struct.platform_device* %18, %struct.platform_device** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = call %struct.bq4802* @platform_get_drvdata(%struct.platform_device* %19)
  store %struct.bq4802* %20, %struct.bq4802** %6, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1900
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = udiv i32 %25, 100
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %16, align 4
  %28 = urem i32 %27, 100
  store i32 %28, i32* %12, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bin2bcd(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @bin2bcd(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @bin2bcd(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @bin2bcd(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @bin2bcd(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @bin2bcd(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @bin2bcd(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %60 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %59, i32 0, i32 1
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %64 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %63, i32 0, i32 0
  %65 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %64, align 8
  %66 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %67 = call i32 %65(%struct.bq4802* %66, i32 14)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %69 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %68, i32 0, i32 2
  %70 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %69, align 8
  %71 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %72 = load i32, i32* %14, align 4
  %73 = or i32 %72, 8
  %74 = call i32 %70(%struct.bq4802* %71, i32 14, i32 %73)
  %75 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %76 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %75, i32 0, i32 2
  %77 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %76, align 8
  %78 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 %77(%struct.bq4802* %78, i32 0, i32 %79)
  %81 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %82 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %81, i32 0, i32 2
  %83 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %82, align 8
  %84 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 %83(%struct.bq4802* %84, i32 2, i32 %85)
  %87 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %88 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %87, i32 0, i32 2
  %89 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %88, align 8
  %90 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 %89(%struct.bq4802* %90, i32 4, i32 %91)
  %93 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %94 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %93, i32 0, i32 2
  %95 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %94, align 8
  %96 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 %95(%struct.bq4802* %96, i32 6, i32 %97)
  %99 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %100 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %99, i32 0, i32 2
  %101 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %100, align 8
  %102 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 %101(%struct.bq4802* %102, i32 9, i32 %103)
  %105 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %106 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %105, i32 0, i32 2
  %107 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %106, align 8
  %108 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 %107(%struct.bq4802* %108, i32 10, i32 %109)
  %111 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %112 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %111, i32 0, i32 2
  %113 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %112, align 8
  %114 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 %113(%struct.bq4802* %114, i32 15, i32 %115)
  %117 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %118 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %117, i32 0, i32 2
  %119 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %118, align 8
  %120 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 %119(%struct.bq4802* %120, i32 14, i32 %121)
  %123 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %124 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %123, i32 0, i32 1
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.bq4802* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
