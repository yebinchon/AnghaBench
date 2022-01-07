; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t94.c_m41t94_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t94.c_m41t94_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i8*, i64, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }

@M41T94_REG_HT = common dso_local global i32 0, align 4
@M41T94_BIT_HALT = common dso_local global i32 0, align 4
@M41T94_REG_SECONDS = common dso_local global i32 0, align 4
@M41T94_BIT_STOP = common dso_local global i32 0, align 4
@M41T94_REG_MINUTES = common dso_local global i32 0, align 4
@M41T94_REG_HOURS = common dso_local global i32 0, align 4
@M41T94_REG_WDAY = common dso_local global i32 0, align 4
@M41T94_REG_DAY = common dso_local global i32 0, align 4
@M41T94_REG_MONTH = common dso_local global i32 0, align 4
@M41T94_REG_YEAR = common dso_local global i32 0, align 4
@M41T94_BIT_CB = common dso_local global i32 0, align 4
@M41T94_BIT_CEB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m41t94_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t94_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = load i32, i32* @M41T94_REG_HT, align 4
  %14 = call i32 @spi_w8r8(%struct.spi_device* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @M41T94_BIT_HALT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i32, i32* @M41T94_REG_HT, align 4
  %26 = or i32 128, %25
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @M41T94_BIT_HALT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = call i32 @spi_write(%struct.spi_device* %33, i32* %34, i32 2)
  br label %36

36:                                               ; preds = %24, %19
  %37 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %38 = load i32, i32* @M41T94_REG_SECONDS, align 4
  %39 = call i32 @spi_w8r8(%struct.spi_device* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %150

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @M41T94_BIT_STOP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* @M41T94_REG_SECONDS, align 4
  %51 = or i32 128, %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @M41T94_BIT_STOP, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %60 = call i32 @spi_write(%struct.spi_device* %58, i32* %59, i32 2)
  br label %61

61:                                               ; preds = %49, %44
  %62 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %63 = load i32, i32* @M41T94_REG_SECONDS, align 4
  %64 = call i32 @spi_w8r8(%struct.spi_device* %62, i32 %63)
  %65 = call i8* @bcd2bin(i32 %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %69 = load i32, i32* @M41T94_REG_MINUTES, align 4
  %70 = call i32 @spi_w8r8(%struct.spi_device* %68, i32 %69)
  %71 = call i8* @bcd2bin(i32 %70)
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %75 = load i32, i32* @M41T94_REG_HOURS, align 4
  %76 = call i32 @spi_w8r8(%struct.spi_device* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 63
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %83 = load i32, i32* @M41T94_REG_WDAY, align 4
  %84 = call i32 @spi_w8r8(%struct.spi_device* %82, i32 %83)
  %85 = call i8* @bcd2bin(i32 %84)
  %86 = getelementptr i8, i8* %85, i64 -1
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %91 = load i32, i32* @M41T94_REG_DAY, align 4
  %92 = call i32 @spi_w8r8(%struct.spi_device* %90, i32 %91)
  %93 = call i8* @bcd2bin(i32 %92)
  %94 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %97 = load i32, i32* @M41T94_REG_MONTH, align 4
  %98 = call i32 @spi_w8r8(%struct.spi_device* %96, i32 %97)
  %99 = call i8* @bcd2bin(i32 %98)
  %100 = getelementptr i8, i8* %99, i64 -1
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %105 = load i32, i32* @M41T94_REG_YEAR, align 4
  %106 = call i32 @spi_w8r8(%struct.spi_device* %104, i32 %105)
  %107 = call i8* @bcd2bin(i32 %106)
  %108 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @M41T94_BIT_CB, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %61
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @M41T94_BIT_CEB, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114, %61
  %120 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr i8, i8* %122, i64 100
  store i8* %123, i8** %121, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 6
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %136 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %145 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %128, i8* %131, i8* %134, i8* %137, i64 %140, i8* %143, i64 %146)
  %148 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %149 = call i32 @rtc_valid_tm(%struct.rtc_time* %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %124, %42, %17
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
