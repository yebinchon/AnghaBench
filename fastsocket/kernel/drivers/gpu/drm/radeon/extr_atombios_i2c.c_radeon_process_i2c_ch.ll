; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_i2c.c_radeon_process_i2c_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_i2c.c_radeon_process_i2c_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64, i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@ProcessI2cChannelTransaction = common dso_local global i32 0, align 4
@HW_I2C_WRITE = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"hw i2c: tried to write too many bytes (%d vs 2)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"hw i2c: tried to read too many bytes (%d vs 255)\0A\00", align 1
@TARGET_HW_I2C_CLOCK = common dso_local global i32 0, align 4
@HW_ASSISTED_I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"hw_i2c error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_i2c_chan*, i32, i32, i32*, i32)* @radeon_process_i2c_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_process_i2c_ch(%struct.radeon_i2c_chan* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_i2c_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.radeon_device*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.radeon_i2c_chan* %0, %struct.radeon_i2c_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %12, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.radeon_device*, %struct.radeon_device** %22, align 8
  store %struct.radeon_device* %23, %struct.radeon_device** %13, align 8
  %24 = load i32, i32* @COMMAND, align 4
  %25 = load i32, i32* @ProcessI2cChannelTransaction, align 4
  %26 = call i32 @GetIndexIntoMasterTable(i32 %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 40)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %16, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @HW_I2C_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %5
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ATOM_MAX_HW_I2C_WRITE, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %105

48:                                               ; preds = %39
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32*, ...) @memcpy(i32* %17, i32* %49, i32 %50)
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @cpu_to_le16(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  store i32 %53, i32* %54, align 4
  br label %65

55:                                               ; preds = %5
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ATOM_MAX_HW_I2C_READ, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %105

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* @TARGET_HW_I2C_CLOCK, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %7, align 8
  %75 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i32 %77, i32* %78, align 8
  %79 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = bitcast %struct.TYPE_8__* %14 to i32*
  %85 = call i32 @atom_execute_table(%struct.TYPE_9__* %82, i32 %83, i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HW_ASSISTED_I2C_STATUS_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %65
  %91 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %105

94:                                               ; preds = %65
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @HW_I2C_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i32*, i32** %10, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (i32*, ...) @memcpy(i32* %100, i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %90, %59, %43
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
