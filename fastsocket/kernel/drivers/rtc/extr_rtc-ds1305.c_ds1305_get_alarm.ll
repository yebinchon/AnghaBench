; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_get_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_get_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.ds1305 = type { i32*, %struct.spi_device* }
%struct.spi_device = type { i32 }

@DS1305_ALM_LEN = common dso_local global i32 0, align 4
@DS1305_CONTROL = common dso_local global i32 0, align 4
@DS1305_AEI0 = common dso_local global i32 0, align 4
@DS1305_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alm0 read\00", align 1
@DS1305_MIN = common dso_local global i64 0, align 8
@DS1305_HOUR = common dso_local global i64 0, align 8
@DS1305_WDAY = common dso_local global i64 0, align 8
@DS1305_ALM_DISABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1305_get_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1305_get_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1305*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.ds1305* @dev_get_drvdata(%struct.device* %13)
  store %struct.ds1305* %14, %struct.ds1305** %6, align 8
  %15 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %16 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %15, i32 0, i32 1
  %17 = load %struct.spi_device*, %struct.spi_device** %16, align 8
  store %struct.spi_device* %17, %struct.spi_device** %7, align 8
  %18 = load i32, i32* @DS1305_ALM_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @DS1305_CONTROL, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %24 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %25 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @spi_write_then_read(%struct.spi_device* %23, i32* %8, i32 4, i32* %26, i32 8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %147

32:                                               ; preds = %2
  %33 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %34 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DS1305_AEI0, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %47 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DS1305_AEI0, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* @DS1305_SEC, align 8
  %60 = call i32 @DS1305_ALM0(i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %62 = mul nuw i64 4, %19
  %63 = trunc i64 %62 to i32
  %64 = call i32 @spi_write_then_read(%struct.spi_device* %61, i32* %8, i32 4, i32* %21, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %32
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %147

69:                                               ; preds = %32
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i64, i64* @DS1305_SEC, align 8
  %72 = getelementptr inbounds i32, i32* %21, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @DS1305_MIN, align 8
  %75 = getelementptr inbounds i32, i32* %21, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @DS1305_HOUR, align 8
  %78 = getelementptr inbounds i32, i32* %21, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @DS1305_WDAY, align 8
  %81 = getelementptr inbounds i32, i32* %21, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_vdbg(%struct.device* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = load i32, i32* @DS1305_ALM_DISABLE, align 4
  %85 = load i64, i64* @DS1305_SEC, align 8
  %86 = getelementptr inbounds i32, i32* %21, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %69
  %91 = load i32, i32* @DS1305_ALM_DISABLE, align 4
  %92 = load i64, i64* @DS1305_MIN, align 8
  %93 = getelementptr inbounds i32, i32* %21, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @DS1305_ALM_DISABLE, align 4
  %99 = load i64, i64* @DS1305_HOUR, align 8
  %100 = getelementptr inbounds i32, i32* %21, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97, %90, %69
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %147

107:                                              ; preds = %97
  %108 = load i64, i64* @DS1305_SEC, align 8
  %109 = getelementptr inbounds i32, i32* %21, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @bcd2bin(i32 %110)
  %112 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %113 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 7
  store i8* %111, i8** %114, align 8
  %115 = load i64, i64* @DS1305_MIN, align 8
  %116 = getelementptr inbounds i32, i32* %21, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @bcd2bin(i32 %117)
  %119 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %120 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 6
  store i8* %118, i8** %121, align 8
  %122 = load i64, i64* @DS1305_HOUR, align 8
  %123 = getelementptr inbounds i32, i32* %21, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bcd2hour(i32 %124)
  %126 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  store i32 %125, i32* %128, align 4
  %129 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %130 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 8
  %132 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %133 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  %135 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %136 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  store i32 -1, i32* %137, align 8
  %138 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %139 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  store i32 -1, i32* %140, align 4
  %141 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %142 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 -1, i32* %143, align 8
  %144 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %145 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 4
  store i32 -1, i32* %146, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %147

147:                                              ; preds = %107, %104, %67, %30
  %148 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.ds1305* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @DS1305_ALM0(i64) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @bcd2hour(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
