; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/superhyway/extr_superhyway.c_superhyway_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/superhyway/extr_superhyway.c_superhyway_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superhyway_device = type { %struct.TYPE_9__, %struct.TYPE_6__, i32, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.superhyway_bus* }
%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.superhyway_bus = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@superhyway_bus_device = common dso_local global i32 0, align 4
@superhyway_bus_type = common dso_local global i32 0, align 4
@superhyway_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SuperHyway device %04x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@superhyway_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @superhyway_add_device(i64 %0, %struct.superhyway_device* %1, %struct.superhyway_bus* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.superhyway_device*, align 8
  %7 = alloca %struct.superhyway_bus*, align 8
  %8 = alloca %struct.superhyway_device*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.superhyway_device* %1, %struct.superhyway_device** %6, align 8
  store %struct.superhyway_bus* %2, %struct.superhyway_bus** %7, align 8
  %9 = load %struct.superhyway_device*, %struct.superhyway_device** %6, align 8
  store %struct.superhyway_device* %9, %struct.superhyway_device** %8, align 8
  %10 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %11 = icmp ne %struct.superhyway_device* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.superhyway_device* @kzalloc(i32 56, i32 %13)
  store %struct.superhyway_device* %14, %struct.superhyway_device** %8, align 8
  %15 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %16 = icmp ne %struct.superhyway_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %107

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.superhyway_bus*, %struct.superhyway_bus** %7, align 8
  %23 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %24 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %23, i32 0, i32 5
  store %struct.superhyway_bus* %22, %struct.superhyway_bus** %24, align 8
  %25 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %28 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %27, i32 0, i32 3
  %29 = call i32 @superhyway_read_vcr(%struct.superhyway_device* %25, i64 %26, %struct.TYPE_7__* %28)
  %30 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %31 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %72, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_8__* @kmalloc(i32 4, i32 %35)
  %37 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %38 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %37, i32 0, i32 4
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %38, align 8
  %39 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %40 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %45 = call i32 @kfree(%struct.superhyway_device* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %107

48:                                               ; preds = %34
  %49 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %50 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %53 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %58 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %57, i32 0, i32 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %62 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %61, i32 0, i32 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 16777216
  %67 = trunc i64 %66 to i32
  %68 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %69 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  br label %72

72:                                               ; preds = %48, %21
  %73 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %74 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i32* @superhyway_bus_device, i32** %75, align 8
  %76 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %77 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32* @superhyway_bus_type, i32** %78, align 8
  %79 = load i32, i32* @superhyway_device_release, align 4
  %80 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %81 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %84 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %88 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %91 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %94 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @sprintf(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %99 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %98, i32 0, i32 0
  %100 = load i32, i32* @superhyway_devices, align 4
  %101 = call i32 @dev_set_name(%struct.TYPE_9__* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @superhyway_devices, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @superhyway_devices, align 4
  %104 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %105 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %104, i32 0, i32 0
  %106 = call i32 @device_register(%struct.TYPE_9__* %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %72, %43, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.superhyway_device* @kzalloc(i32, i32) #1

declare dso_local i32 @superhyway_read_vcr(%struct.superhyway_device*, i64, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.superhyway_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
