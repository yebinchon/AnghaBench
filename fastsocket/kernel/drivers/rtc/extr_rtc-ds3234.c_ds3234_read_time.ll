; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds3234.c_ds3234_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds3234.c_ds3234_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds3234_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3234_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca %struct.spi_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.spi_device* @to_spi_device(%struct.device* %9)
  store %struct.spi_device* %10, %struct.spi_device** %8, align 8
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %11, align 1
  %12 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %15 = call i32 @spi_write_then_read(%struct.spi_device* %12, i8* %13, i32 1, i8* %14, i32 8)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i8* @bcd2bin(i8 zeroext %22)
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = call i8* @bcd2bin(i8 zeroext %27)
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 63
  %35 = trunc i32 %34 to i8
  %36 = call i8* @bcd2bin(i8 zeroext %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = call i8* @bcd2bin(i8 zeroext %40)
  %42 = getelementptr i8, i8* %41, i64 -1
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 4
  %46 = load i8, i8* %45, align 1
  %47 = call i8* @bcd2bin(i8 zeroext %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 5
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 31
  %54 = trunc i32 %53 to i8
  %55 = call i8* @bcd2bin(i8 zeroext %54)
  %56 = getelementptr i8, i8* %55, i64 -1
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 6
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = call i8* @bcd2bin(i8 zeroext %63)
  %65 = getelementptr i8, i8* %64, i64 100
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = call i32 @rtc_valid_tm(%struct.rtc_time* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %20, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i8*, i32, i8*, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
