; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_get_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.ds1305 = type { i32 }

@DS1305_SEC = common dso_local global i64 0, align 8
@DS1305_RTC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: %02x %02x %02x, %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@DS1305_MIN = common dso_local global i64 0, align 8
@DS1305_HOUR = common dso_local global i64 0, align 8
@DS1305_WDAY = common dso_local global i64 0, align 8
@DS1305_MDAY = common dso_local global i64 0, align 8
@DS1305_MON = common dso_local global i64 0, align 8
@DS1305_YEAR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1305_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1305_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1305*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ds1305* @dev_get_drvdata(%struct.device* %12)
  store %struct.ds1305* %13, %struct.ds1305** %6, align 8
  %14 = load i64, i64* @DS1305_SEC, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @DS1305_RTC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %20 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nuw i64 8, %16
  %23 = trunc i64 %22 to i32
  %24 = call i32 @spi_write_then_read(i32 %21, i64* %7, i32 8, i64* %18, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %120

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = getelementptr inbounds i64, i64* %18, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = getelementptr inbounds i64, i64* %18, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %18, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = getelementptr inbounds i64, i64* %18, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %18, i64 4
  %40 = load i64, i64* %39, align 16
  %41 = getelementptr inbounds i64, i64* %18, i64 5
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %18, i64 6
  %44 = load i64, i64* %43, align 16
  %45 = call i32 @dev_vdbg(%struct.device* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %34, i64 %36, i64 %38, i64 %40, i64 %42, i64 %44)
  %46 = load i64, i64* @DS1305_SEC, align 8
  %47 = getelementptr inbounds i64, i64* %18, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @bcd2bin(i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* @DS1305_MIN, align 8
  %54 = getelementptr inbounds i64, i64* %18, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @bcd2bin(i64 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* @DS1305_HOUR, align 8
  %61 = getelementptr inbounds i64, i64* %18, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @bcd2hour(i64 %62)
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @DS1305_WDAY, align 8
  %67 = getelementptr inbounds i64, i64* %18, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, 1
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* @DS1305_MDAY, align 8
  %73 = getelementptr inbounds i64, i64* %18, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @bcd2bin(i64 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* @DS1305_MON, align 8
  %80 = getelementptr inbounds i64, i64* %18, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @bcd2bin(i64 %81)
  %83 = getelementptr i8, i8* %82, i64 -1
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 5
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @DS1305_YEAR, align 8
  %88 = getelementptr inbounds i64, i64* %18, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @bcd2bin(i64 %89)
  %91 = getelementptr i8, i8* %90, i64 100
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @dev_vdbg(%struct.device* %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %101, i64 %104, i64 %107, i64 %110, i64 %113, i64 %116)
  %118 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %119 = call i32 @rtc_valid_tm(%struct.rtc_time* %118)
  store i32 %119, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %120

120:                                              ; preds = %29, %27
  %121 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.ds1305* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spi_write_then_read(i32, i64*, i32, i64*, i32) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i8* @bcd2bin(i64) #1

declare dso_local i64 @bcd2hour(i64) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
