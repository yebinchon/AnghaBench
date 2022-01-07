; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1390.c_ds1390_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1390.c_ds1390_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }
%struct.ds1390 = type { i32* }

@DS1390_REG_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1390_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1390_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.ds1390*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.spi_device* @to_spi_device(%struct.device* %9)
  store %struct.spi_device* %10, %struct.spi_device** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ds1390* @dev_get_drvdata(%struct.device* %11)
  store %struct.ds1390* %12, %struct.ds1390** %7, align 8
  %13 = load i32, i32* @DS1390_REG_SECONDS, align 4
  %14 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %15 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %19 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %20 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %23 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @spi_write_then_read(%struct.spi_device* %18, i32* %21, i32 1, i32* %24, i32 8)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %2
  %31 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %32 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @bcd2bin(i32 %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %40 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @bcd2bin(i32 %43)
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %48 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @bcd2bin(i32 %51)
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %56 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @bcd2bin(i32 %59)
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %64 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @bcd2bin(i32 %67)
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %72 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 127
  %77 = call i8* @bcd2bin(i32 %76)
  %78 = getelementptr i8, i8* %77, i64 -1
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %82 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @bcd2bin(i32 %85)
  %87 = load %struct.ds1390*, %struct.ds1390** %7, align 8
  %88 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 100, i32 0
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %86, i64 %96
  %98 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %101 = call i32 @rtc_valid_tm(%struct.rtc_time* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %30, %28
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.ds1390* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
