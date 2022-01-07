; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rs5c348_plat_data* }
%struct.rs5c348_plat_data = type { i32 }

@RS5C348_REG_CTL2 = common dso_local global i32 0, align 4
@RS5C348_REG_SECS = common dso_local global i64 0, align 8
@RS5C348_SECS_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_MINS = common dso_local global i64 0, align 8
@RS5C348_MINS_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_HOURS = common dso_local global i64 0, align 8
@RS5C348_HOURS_MASK = common dso_local global i32 0, align 4
@RS5C348_BIT_PM = common dso_local global i32 0, align 4
@RS5C348_REG_WDAY = common dso_local global i64 0, align 8
@RS5C348_WDAY_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_DAY = common dso_local global i64 0, align 8
@RS5C348_DAY_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_MONTH = common dso_local global i64 0, align 8
@RS5C348_MONTH_MASK = common dso_local global i32 0, align 4
@RS5C348_REG_YEAR = common dso_local global i64 0, align 8
@RS5C348_BIT_Y2K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"retrieved date/time is not valid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rs5c348_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c348_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.rs5c348_plat_data*, align 8
  %8 = alloca [5 x i32], align 16
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.spi_device* @to_spi_device(%struct.device* %11)
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %15, align 8
  store %struct.rs5c348_plat_data* %16, %struct.rs5c348_plat_data** %7, align 8
  %17 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %18 = call i32 @RS5C348_CMD_R(i32 %17)
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @RS5C348_REG_CTL2, align 4
  %22 = call i32 @RS5C348_CMD_R(i32 %21)
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %24, align 4
  %25 = load i64, i64* @RS5C348_REG_SECS, align 8
  %26 = call i32 @RS5C348_CMD_MR(i64 %25)
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %31 = call i32 @spi_write_then_read(%struct.spi_device* %28, i32* %29, i32 20, i32* %30, i32 28)
  store i32 %31, i32* %10, align 4
  %32 = call i32 @udelay(i32 62)
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %136

37:                                               ; preds = %2
  %38 = load i64, i64* @RS5C348_REG_SECS, align 8
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RS5C348_SECS_MASK, align 4
  %42 = and i32 %40, %41
  %43 = call i8* @bcd2bin(i32 %42)
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* @RS5C348_REG_MINS, align 8
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RS5C348_MINS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i8* @bcd2bin(i32 %50)
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RS5C348_HOURS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = call i8* @bcd2bin(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %7, align 8
  %64 = getelementptr inbounds %struct.rs5c348_plat_data, %struct.rs5c348_plat_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %37
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = srem i32 %70, 12
  store i32 %71, i32* %69, align 8
  %72 = load i64, i64* @RS5C348_REG_HOURS, align 8
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RS5C348_BIT_PM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 12
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %67
  br label %84

84:                                               ; preds = %83, %37
  %85 = load i64, i64* @RS5C348_REG_WDAY, align 8
  %86 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RS5C348_WDAY_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i8* @bcd2bin(i32 %89)
  %91 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* @RS5C348_REG_DAY, align 8
  %94 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RS5C348_DAY_MASK, align 4
  %97 = and i32 %95, %96
  %98 = call i8* @bcd2bin(i32 %97)
  %99 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* @RS5C348_REG_MONTH, align 8
  %102 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RS5C348_MONTH_MASK, align 4
  %105 = and i32 %103, %104
  %106 = call i8* @bcd2bin(i32 %105)
  %107 = getelementptr i8, i8* %106, i64 -1
  %108 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* @RS5C348_REG_YEAR, align 8
  %111 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @bcd2bin(i32 %112)
  %114 = load i64, i64* @RS5C348_REG_MONTH, align 8
  %115 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RS5C348_BIT_Y2K, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 100, i32 0
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %113, i64 %122
  %124 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %127 = call i64 @rtc_valid_tm(%struct.rtc_time* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %84
  %130 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(%struct.TYPE_2__* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %134 = call i32 @rtc_time_to_tm(i32 0, %struct.rtc_time* %133)
  br label %135

135:                                              ; preds = %129, %84
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %35
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @RS5C348_CMD_R(i32) #1

declare dso_local i32 @RS5C348_CMD_MR(i64) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i64 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @rtc_time_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
