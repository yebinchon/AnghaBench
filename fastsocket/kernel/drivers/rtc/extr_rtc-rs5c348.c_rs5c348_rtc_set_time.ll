; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rs5c348_plat_data* }
%struct.rs5c348_plat_data = type { i64 }

@RS5C348_REG_CTL2 = common dso_local global i32 0, align 4
@RS5C348_REG_SECS = common dso_local global i64 0, align 8
@RS5C348_REG_MINS = common dso_local global i64 0, align 8
@RS5C348_REG_HOURS = common dso_local global i64 0, align 8
@RS5C348_BIT_PM = common dso_local global i32 0, align 4
@RS5C348_REG_WDAY = common dso_local global i64 0, align 8
@RS5C348_REG_DAY = common dso_local global i64 0, align 8
@RS5C348_BIT_Y2K = common dso_local global i32 0, align 4
@RS5C348_REG_MONTH = common dso_local global i64 0, align 8
@RS5C348_REG_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rs5c348_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c348_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.rs5c348_plat_data*, align 8
  %7 = alloca [12 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %14, align 8
  store %struct.rs5c348_plat_data* %15, %struct.rs5c348_plat_data** %6, align 8
  %16 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 0
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %18 = call i32 @RS5C348_CMD_R(i32 %17)
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %22 = call i32 @RS5C348_CMD_R(i32 %21)
  %23 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %24, align 4
  %25 = load i64, i64* @RS5C348_REG_SECS, align 8
  %26 = call i32 @RS5C348_CMD_MW(i64 %25)
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 5
  store i32* %28, i32** %8, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bin2bcd(i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* @RS5C348_REG_SECS, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* @RS5C348_REG_MINS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %6, align 8
  %44 = getelementptr inbounds %struct.rs5c348_plat_data, %struct.rs5c348_plat_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %2
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bin2bcd(i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  br label %76

55:                                               ; preds = %2
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 11
  %60 = srem i32 %59, 12
  %61 = add nsw i32 %60, 1
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 12
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @RS5C348_BIT_PM, align 4
  br label %70

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %62, %71
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %47
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bin2bcd(i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i64, i64* @RS5C348_REG_WDAY, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bin2bcd(i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i64, i64* @RS5C348_REG_DAY, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @bin2bcd(i32 %94)
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 100
  br i1 %99, label %100, label %102

100:                                              ; preds = %76
  %101 = load i32, i32* @RS5C348_BIT_Y2K, align 4
  br label %103

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = or i32 %95, %104
  %106 = load i32*, i32** %8, align 8
  %107 = load i64, i64* @RS5C348_REG_MONTH, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %110 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = srem i32 %111, 100
  %113 = call i32 @bin2bcd(i32 %112)
  %114 = load i32*, i32** %8, align 8
  %115 = load i64, i64* @RS5C348_REG_YEAR, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %118 = getelementptr inbounds [12 x i32], [12 x i32]* %7, i64 0, i64 0
  %119 = call i32 @spi_write_then_read(%struct.spi_device* %117, i32* %118, i32 48, i32* null, i32 0)
  store i32 %119, i32* %9, align 4
  %120 = call i32 @udelay(i32 62)
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @RS5C348_CMD_R(i32) #1

declare dso_local i32 @RS5C348_CMD_MW(i64) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
