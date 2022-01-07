; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1390.c_ds1390_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1390.c_ds1390_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }
%struct.ds1390 = type { i32* }

@DS1390_REG_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1390_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1390_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.ds1390*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.spi_device* @to_spi_device(%struct.device* %7)
  store %struct.spi_device* %8, %struct.spi_device** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.ds1390* @dev_get_drvdata(%struct.device* %9)
  store %struct.ds1390* %10, %struct.ds1390** %6, align 8
  %11 = load i32, i32* @DS1390_REG_SECONDS, align 4
  %12 = or i32 %11, 128
  %13 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %14 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bin2bcd(i32 %19)
  %21 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %22 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bin2bcd(i32 %27)
  %29 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %30 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %28, i32* %32, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bin2bcd(i32 %35)
  %37 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %38 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bin2bcd(i32 %43)
  %45 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %46 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %44, i32* %48, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bin2bcd(i32 %51)
  %53 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %54 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 %52, i32* %56, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @bin2bcd(i32 %60)
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 99
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 128, i32 0
  %68 = or i32 %61, %67
  %69 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %70 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %68, i32* %72, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = srem i32 %75, 100
  %77 = call i32 @bin2bcd(i32 %76)
  %78 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %79 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 7
  store i32 %77, i32* %81, align 4
  %82 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %83 = load %struct.ds1390*, %struct.ds1390** %6, align 8
  %84 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @spi_write_then_read(%struct.spi_device* %82, i32* %85, i32 8, i32* null, i32 0)
  ret i32 %86
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.ds1390* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
