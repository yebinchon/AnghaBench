; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bq4802.c_bq4802_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-bq4802.c_bq4802_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.bq4802 = type { i32 (%struct.bq4802*, i32)*, i32, i32 (%struct.bq4802*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @bq4802_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq4802_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.bq4802*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call %struct.bq4802* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.bq4802* %13, %struct.bq4802** %6, align 8
  %14 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %15 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %19 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %18, i32 0, i32 0
  %20 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %19, align 8
  %21 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %22 = call i32 %20(%struct.bq4802* %21, i32 14)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %24 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %23, i32 0, i32 2
  %25 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %24, align 8
  %26 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, 8
  %29 = call i32 %25(%struct.bq4802* %26, i32 14, i32 %28)
  %30 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %31 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %30, i32 0, i32 0
  %32 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %31, align 8
  %33 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %34 = call i32 %32(%struct.bq4802* %33, i32 0)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %38 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %37, i32 0, i32 0
  %39 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %38, align 8
  %40 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %41 = call i32 %39(%struct.bq4802* %40, i32 2)
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %45 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %44, i32 0, i32 0
  %46 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %45, align 8
  %47 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %48 = call i32 %46(%struct.bq4802* %47, i32 4)
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %52 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %51, i32 0, i32 0
  %53 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %52, align 8
  %54 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %55 = call i32 %53(%struct.bq4802* %54, i32 6)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %59 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %58, i32 0, i32 0
  %60 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %59, align 8
  %61 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %62 = call i32 %60(%struct.bq4802* %61, i32 9)
  %63 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %66 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %65, i32 0, i32 0
  %67 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %66, align 8
  %68 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %69 = call i32 %67(%struct.bq4802* %68, i32 10)
  %70 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %73 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %72, i32 0, i32 0
  %74 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %73, align 8
  %75 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %76 = call i32 %74(%struct.bq4802* %75, i32 8)
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %80 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %79, i32 0, i32 0
  %81 = load i32 (%struct.bq4802*, i32)*, i32 (%struct.bq4802*, i32)** %80, align 8
  %82 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %83 = call i32 %81(%struct.bq4802* %82, i32 15)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %85 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %84, i32 0, i32 2
  %86 = load i32 (%struct.bq4802*, i32, i32)*, i32 (%struct.bq4802*, i32, i32)** %85, align 8
  %87 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 %86(%struct.bq4802* %87, i32 14, i32 %88)
  %90 = load %struct.bq4802*, %struct.bq4802** %6, align 8
  %91 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %90, i32 0, i32 1
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @bcd2bin(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @bcd2bin(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @bcd2bin(i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @bcd2bin(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @bcd2bin(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @bcd2bin(i32 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @bcd2bin(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i8* @bcd2bin(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = mul i32 %146, 100
  %148 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %149 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %153 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1900
  store i32 %155, i32* %153, align 4
  %156 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %157 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.bq4802* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
