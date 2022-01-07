; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i64, i64, i64, i32, i64, i64 }
%struct.ds1305 = type { i32, i32 }

@DS1305_RTC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@DS1305_WRITE = common dso_local global i32 0, align 4
@DS1305_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: %02x %02x %02x, %02x %02x %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1305_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1305_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ds1305*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.ds1305* @dev_get_drvdata(%struct.device* %9)
  store %struct.ds1305* %10, %struct.ds1305** %5, align 8
  %11 = load i32, i32* @DS1305_RTC_LEN, align 4
  %12 = add nsw i32 1, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_vdbg(%struct.device* %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %22, i32 %25, i64 %28, i64 %31, i64 %34, i32 %37)
  %39 = load i32, i32* @DS1305_WRITE, align 4
  %40 = load i32, i32* @DS1305_SEC, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @bin2bcd(i64 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @bin2bcd(i64 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.ds1305*, %struct.ds1305** %5, align 8
  %59 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @hour2bcd(i32 %60, i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 7
  br i1 %70, label %71, label %76

71:                                               ; preds = %2
  %72 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  br label %77

76:                                               ; preds = %2
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ 1, %76 ]
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  %81 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @bin2bcd(i64 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %88 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = call i8* @bin2bcd(i64 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 100
  %100 = call i8* @bin2bcd(i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = getelementptr inbounds i32, i32* %15, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds i32, i32* %15, i64 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds i32, i32* %15, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds i32, i32* %15, i64 4
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds i32, i32* %15, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds i32, i32* %15, i64 6
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds i32, i32* %15, i64 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %108, i32 %110, i32 %112, i32 %114, i32 %116, i32 %118)
  %120 = load %struct.ds1305*, %struct.ds1305** %5, align 8
  %121 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nuw i64 4, %13
  %124 = trunc i64 %123 to i32
  %125 = call i32 @spi_write_then_read(i32 %122, i32* %15, i32 %124, i32* null, i32 0)
  %126 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %126)
  ret i32 %125
}

declare dso_local %struct.ds1305* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i8*, i64, i64, i32, i64, i64, i64, i32) #1

declare dso_local i8* @bin2bcd(i64) #1

declare dso_local i32 @hour2bcd(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spi_write_then_read(i32, i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
