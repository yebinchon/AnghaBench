; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wl12xx_platform_data* }
%struct.wl12xx_platform_data = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32*, %struct.spi_device* }

@.str = private unnamed_addr constant [17 x i8] c"no platform data\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@wl1251_spi_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"spi_setup failed\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"set power function missing in platform data\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"irq missing in platform data\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@wl1251_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"request_irq() failed: %d\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wl1251_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.wl12xx_platform_data*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %10, align 8
  store %struct.wl12xx_platform_data* %11, %struct.wl12xx_platform_data** %4, align 8
  %12 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %4, align 8
  %13 = icmp ne %struct.wl12xx_platform_data* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %123

18:                                               ; preds = %1
  %19 = call %struct.ieee80211_hw* (...) @wl1251_alloc_hw()
  store %struct.ieee80211_hw* %19, %struct.ieee80211_hw** %5, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = call i64 @IS_ERR(%struct.ieee80211_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.ieee80211_hw* %24)
  store i32 %25, i32* %2, align 4
  br label %123

26:                                               ; preds = %18
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load %struct.wl1251*, %struct.wl1251** %28, align 8
  store %struct.wl1251* %29, %struct.wl1251** %6, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 2
  %33 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %30, %struct.TYPE_2__* %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %36 = call i32 @spi_set_drvdata(%struct.spi_device* %34, %struct.wl1251* %35)
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %39 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %38, i32 0, i32 4
  store %struct.spi_device* %37, %struct.spi_device** %39, align 8
  %40 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 3
  store i32* @wl1251_spi_ops, i32** %41, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  store i32 32, i32* %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = call i32 @spi_setup(%struct.spi_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %119

50:                                               ; preds = %26
  %51 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.wl12xx_platform_data, %struct.wl12xx_platform_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %57 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %123

64:                                               ; preds = %50
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %69 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %71 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %123

78:                                               ; preds = %64
  %79 = load %struct.wl12xx_platform_data*, %struct.wl12xx_platform_data** %4, align 8
  %80 = getelementptr inbounds %struct.wl12xx_platform_data, %struct.wl12xx_platform_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %83 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %85 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %88 = call i32 @irq_set_status_flags(i64 %86, i32 %87)
  %89 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %90 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @wl1251_irq, align 4
  %93 = load i32, i32* @DRIVER_NAME, align 4
  %94 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %95 = call i32 @request_irq(i64 %91, i32 %92, i32 0, i32 %93, %struct.wl1251* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %78
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %119

101:                                              ; preds = %78
  %102 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %103 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %106 = call i32 @irq_set_irq_type(i64 %104, i32 %105)
  %107 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %108 = call i32 @wl1251_init_ieee80211(%struct.wl1251* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %113

112:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %123

113:                                              ; preds = %111
  %114 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %115 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %118 = call i32 @free_irq(i64 %116, %struct.wl1251* %117)
  br label %119

119:                                              ; preds = %113, %98, %48
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %121 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %112, %74, %60, %23, %14
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @wl1251_error(i8*, ...) #1

declare dso_local %struct.ieee80211_hw* @wl1251_alloc_hw(...) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_hw*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_hw*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, %struct.TYPE_2__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wl1251*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @irq_set_status_flags(i64, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.wl1251*) #1

declare dso_local i32 @irq_set_irq_type(i64, i32) #1

declare dso_local i32 @wl1251_init_ieee80211(%struct.wl1251*) #1

declare dso_local i32 @free_irq(i64, %struct.wl1251*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
