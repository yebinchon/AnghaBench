; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_spi.c_wl1271_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_spi.c_wl1271_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wl12xx_spi_glue = type { %struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.wlcore_platdev_data = type { %struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32 }
%struct.resource = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@spi_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't allocate glue\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"spi_setup failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"wl12xx\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"can't allocate platform_device\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"can't add resources\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"can't add platform data\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"can't register platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wl1271_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.wl12xx_spi_glue*, align 8
  %5 = alloca %struct.wlcore_platdev_data*, align 8
  %6 = alloca [1 x %struct.resource], align 16
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wlcore_platdev_data* @kzalloc(i32 32, i32 %10)
  store %struct.wlcore_platdev_data* %11, %struct.wlcore_platdev_data** %5, align 8
  %12 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %13 = icmp ne %struct.wlcore_platdev_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %152

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %21 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %23 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 2
  %29 = call i32 @dev_err(%struct.TYPE_10__* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %149

32:                                               ; preds = %15
  %33 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %34 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %33, i32 0, i32 2
  store i32* @spi_ops, i32** %34, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.wlcore_platdev_data* @kzalloc(i32 32, i32 %35)
  %37 = bitcast %struct.wlcore_platdev_data* %36 to %struct.wl12xx_spi_glue*
  store %struct.wl12xx_spi_glue* %37, %struct.wl12xx_spi_glue** %4, align 8
  %38 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %39 = icmp ne %struct.wl12xx_spi_glue* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 2
  %43 = call i32 @dev_err(%struct.TYPE_10__* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %149

44:                                               ; preds = %32
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 2
  %47 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %48 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %47, i32 0, i32 1
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %48, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %51 = bitcast %struct.wl12xx_spi_glue* %50 to %struct.wlcore_platdev_data*
  %52 = call i32 @spi_set_drvdata(%struct.spi_device* %49, %struct.wlcore_platdev_data* %51)
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  store i32 32, i32* %54, align 4
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = call i32 @spi_setup(%struct.spi_device* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %61 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call i32 @dev_err(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %145

64:                                               ; preds = %44
  %65 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %66 = call %struct.TYPE_9__* @platform_device_alloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %68 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %67, i32 0, i32 0
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %68, align 8
  %69 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %70 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %64
  %74 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %75 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @dev_err(%struct.TYPE_10__* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %145

80:                                               ; preds = %64
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 2
  %83 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %84 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %87, align 8
  %88 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %89 = call i32 @memset(%struct.resource* %88, i32 0, i32 16)
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @IORESOURCE_IRQ, align 4
  %96 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %99, align 16
  %100 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %101 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %104 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %6, i64 0, i64 0
  %105 = call i32 @ARRAY_SIZE(%struct.resource* %104)
  %106 = call i32 @platform_device_add_resources(%struct.TYPE_9__* %102, %struct.resource* %103, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %80
  %110 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %111 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = call i32 @dev_err(%struct.TYPE_10__* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %140

114:                                              ; preds = %80
  %115 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %116 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %119 = call i32 @platform_device_add_data(%struct.TYPE_9__* %117, %struct.wlcore_platdev_data* %118, i32 32)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %124 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @dev_err(%struct.TYPE_10__* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %140

127:                                              ; preds = %114
  %128 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %129 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = call i32 @platform_device_add(%struct.TYPE_9__* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %136 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call i32 @dev_err(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %140

139:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %154

140:                                              ; preds = %134, %122, %109
  %141 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %142 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = call i32 @platform_device_put(%struct.TYPE_9__* %143)
  br label %145

145:                                              ; preds = %140, %73, %59
  %146 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %4, align 8
  %147 = bitcast %struct.wl12xx_spi_glue* %146 to %struct.wlcore_platdev_data*
  %148 = call i32 @kfree(%struct.wlcore_platdev_data* %147)
  br label %149

149:                                              ; preds = %145, %40, %26
  %150 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %151 = call i32 @kfree(%struct.wlcore_platdev_data* %150)
  br label %152

152:                                              ; preds = %149, %14
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %139
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.wlcore_platdev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wlcore_platdev_data*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.TYPE_9__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_9__*, %struct.resource*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_add_data(%struct.TYPE_9__*, %struct.wlcore_platdev_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.wlcore_platdev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
