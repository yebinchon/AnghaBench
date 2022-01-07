; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-v3020.c_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-v3020.c_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)*, i32 (%struct.v3020*)*, i32 (%struct.v3020*)* }
%struct.v3020 = type { %struct.TYPE_9__*, %struct.rtc_device*, i32, %struct.TYPE_7__* }
%struct.rtc_device = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.v3020_platform_data* }
%struct.TYPE_8__ = type { i64 }
%struct.v3020_platform_data = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v3020_gpio_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@v3020_mmio_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@V3020_SECONDS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V3020_STATUS_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Chip available at GPIOs %d, %d, %d, %d\0A\00", align 1
@V3020_CS = common dso_local global i64 0, align 8
@V3020_WR = common dso_local global i64 0, align 8
@V3020_RD = common dso_local global i64 0, align 8
@V3020_IO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"Chip available at physical address 0x%llx,data connected to D%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"v3020\00", align 1
@v3020_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.v3020_platform_data*, align 8
  %5 = alloca %struct.v3020*, align 8
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %12, align 8
  store %struct.v3020_platform_data* %13, %struct.v3020_platform_data** %4, align 8
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.v3020* @kzalloc(i32 32, i32 %16)
  store %struct.v3020* %17, %struct.v3020** %5, align 8
  %18 = load %struct.v3020*, %struct.v3020** %5, align 8
  %19 = icmp ne %struct.v3020* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %157

23:                                               ; preds = %1
  %24 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.v3020*, %struct.v3020** %5, align 8
  %30 = getelementptr inbounds %struct.v3020, %struct.v3020* %29, i32 0, i32 0
  store %struct.TYPE_9__* @v3020_gpio_ops, %struct.TYPE_9__** %30, align 8
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.v3020*, %struct.v3020** %5, align 8
  %33 = getelementptr inbounds %struct.v3020, %struct.v3020* %32, i32 0, i32 0
  store %struct.TYPE_9__* @v3020_mmio_ops, %struct.TYPE_9__** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.v3020*, %struct.v3020** %5, align 8
  %36 = getelementptr inbounds %struct.v3020, %struct.v3020* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)*, i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)** %38, align 8
  %40 = load %struct.v3020*, %struct.v3020** %5, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %4, align 8
  %43 = call i32 %39(%struct.v3020* %40, %struct.platform_device* %41, %struct.v3020_platform_data* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %153

47:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.v3020*, %struct.v3020** %5, align 8
  %53 = getelementptr inbounds %struct.v3020, %struct.v3020* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32 (%struct.v3020*)*, i32 (%struct.v3020*)** %55, align 8
  %57 = load %struct.v3020*, %struct.v3020** %5, align 8
  %58 = call i32 %56(%struct.v3020* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load %struct.v3020*, %struct.v3020** %5, align 8
  %64 = load i32, i32* @V3020_SECONDS, align 4
  %65 = call i32 @v3020_set_reg(%struct.v3020* %63, i32 %64, i32 51)
  %66 = load %struct.v3020*, %struct.v3020** %5, align 8
  %67 = load i32, i32* @V3020_SECONDS, align 4
  %68 = call i32 @v3020_get_reg(%struct.v3020* %66, i32 %67)
  %69 = icmp ne i32 %68, 51
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %145

73:                                               ; preds = %62
  %74 = load %struct.v3020*, %struct.v3020** %5, align 8
  %75 = load i32, i32* @V3020_STATUS_0, align 4
  %76 = call i32 @v3020_set_reg(%struct.v3020* %74, i32 %75, i32 0)
  %77 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %4, align 8
  %78 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %73
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.v3020*, %struct.v3020** %5, align 8
  %85 = getelementptr inbounds %struct.v3020, %struct.v3020* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i64, i64* @V3020_CS, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.v3020*, %struct.v3020** %5, align 8
  %93 = getelementptr inbounds %struct.v3020, %struct.v3020* %92, i32 0, i32 3
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* @V3020_WR, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v3020*, %struct.v3020** %5, align 8
  %100 = getelementptr inbounds %struct.v3020, %struct.v3020* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i64, i64* @V3020_RD, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v3020*, %struct.v3020** %5, align 8
  %107 = getelementptr inbounds %struct.v3020, %struct.v3020* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i64, i64* @V3020_IO, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.TYPE_10__*, i8*, i64, i32, ...) @dev_info(%struct.TYPE_10__* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %91, i32 %98, i32 %105, i32 %112)
  br label %127

114:                                              ; preds = %73
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.v3020*, %struct.v3020** %5, align 8
  %124 = getelementptr inbounds %struct.v3020, %struct.v3020* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.TYPE_10__*, i8*, i64, i32, ...) @dev_info(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %122, i32 %125)
  br label %127

127:                                              ; preds = %114, %81
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.v3020*, %struct.v3020** %5, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.v3020* %129)
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load i32, i32* @THIS_MODULE, align 4
  %134 = call %struct.rtc_device* @rtc_device_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %132, i32* @v3020_rtc_ops, i32 %133)
  store %struct.rtc_device* %134, %struct.rtc_device** %6, align 8
  %135 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %136 = call i64 @IS_ERR(%struct.rtc_device* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %140 = call i32 @PTR_ERR(%struct.rtc_device* %139)
  store i32 %140, i32* %7, align 4
  br label %145

141:                                              ; preds = %127
  %142 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %143 = load %struct.v3020*, %struct.v3020** %5, align 8
  %144 = getelementptr inbounds %struct.v3020, %struct.v3020* %143, i32 0, i32 1
  store %struct.rtc_device* %142, %struct.rtc_device** %144, align 8
  store i32 0, i32* %2, align 4
  br label %157

145:                                              ; preds = %138, %70
  %146 = load %struct.v3020*, %struct.v3020** %5, align 8
  %147 = getelementptr inbounds %struct.v3020, %struct.v3020* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i32 (%struct.v3020*)*, i32 (%struct.v3020*)** %149, align 8
  %151 = load %struct.v3020*, %struct.v3020** %5, align 8
  %152 = call i32 %150(%struct.v3020* %151)
  br label %153

153:                                              ; preds = %145, %46
  %154 = load %struct.v3020*, %struct.v3020** %5, align 8
  %155 = call i32 @kfree(%struct.v3020* %154)
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %153, %141, %20
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.v3020* @kzalloc(i32, i32) #1

declare dso_local i32 @v3020_set_reg(%struct.v3020*, i32, i32) #1

declare dso_local i32 @v3020_get_reg(%struct.v3020*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i64, i32, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.v3020*) #1

declare dso_local %struct.rtc_device* @rtc_device_register(i8*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @kfree(%struct.v3020*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
