; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6902.c_max6902_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6902.c_max6902_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@MAX6902_REG_CENTURY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6902_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6902_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca [8 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %8, align 8
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  store i8 -65, i8* %12, align 1
  %13 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %16 = call i32 @spi_write_then_read(%struct.spi_device* %13, i8* %14, i32 1, i8* %15, i32 8)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @bcd2bin(i8 zeroext %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @bcd2bin(i8 zeroext %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @bcd2bin(i8 zeroext %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @bcd2bin(i8 zeroext %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 4
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @bcd2bin(i8 zeroext %43)
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 5
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @bcd2bin(i8 zeroext %49)
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 6
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @bcd2bin(i8 zeroext %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* @MAX6902_REG_CENTURY, align 4
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %61 = call i32 @max6902_get_reg(%struct.device* %58, i32 %59, i8* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %21
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %82

66:                                               ; preds = %21
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @bcd2bin(i8 zeroext %68)
  %70 = mul nsw i32 %69, 100
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1900
  store i32 %79, i32* %77, align 4
  %80 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %81 = call i32 @rtc_valid_tm(%struct.rtc_time* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %66, %64, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i8*, i32, i8*, i32) #1

declare dso_local i32 @bcd2bin(i8 zeroext) #1

declare dso_local i32 @max6902_get_reg(%struct.device*, i32, i8*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
