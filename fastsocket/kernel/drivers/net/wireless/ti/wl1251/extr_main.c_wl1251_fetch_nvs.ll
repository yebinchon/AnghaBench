; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_fetch_nvs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_fetch_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.device = type { i32 }

@WL1251_NVS_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not get nvs file: %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"nvs size is not multiple of 32 bits: %zu\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"could not allocate memory for the nvs file\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_fetch_nvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_fetch_nvs(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %7 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %8 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @wiphy_dev(i32 %11)
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load i32, i32* @WL1251_NVS_NAME, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @request_firmware(%struct.firmware** %4, i32 %13, %struct.device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.firmware*, %struct.firmware** %4, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.firmware*, %struct.firmware** %4, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EILSEQ, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %60

35:                                               ; preds = %22
  %36 = load %struct.firmware*, %struct.firmware** %4, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %40 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %45 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @kmemdup(i32 %43, i32 %46, i32 %47)
  %49 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %50 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %52 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %35
  %56 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %55, %28
  %61 = load %struct.firmware*, %struct.firmware** %4, align 8
  %62 = call i32 @release_firmware(%struct.firmware* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.device* @wiphy_dev(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @wl1251_error(i8*, ...) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
