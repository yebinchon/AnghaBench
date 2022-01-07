; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_create_dp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_create_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.drm_device*, %struct.radeon_i2c_bus_rec }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.radeon_i2c_bus_rec = type { i32 }
%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Radeon aux bus %s\00", align 1
@radeon_dp_i2c_aux_ch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register i2c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_i2c_chan* @radeon_i2c_create_dp(%struct.drm_device* %0, %struct.radeon_i2c_bus_rec* %1, i8* %2) #0 {
  %4 = alloca %struct.radeon_i2c_chan*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radeon_i2c_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.radeon_i2c_bus_rec* %1, %struct.radeon_i2c_bus_rec** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.radeon_i2c_chan* @kzalloc(i32 64, i32 %10)
  store %struct.radeon_i2c_chan* %11, %struct.radeon_i2c_chan** %8, align 8
  %12 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %13 = icmp eq %struct.radeon_i2c_chan* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %78

15:                                               ; preds = %3
  %16 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %17 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %16, i32 0, i32 3
  %18 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %19 = bitcast %struct.radeon_i2c_bus_rec* %17 to i8*
  %20 = bitcast %struct.radeon_i2c_bus_rec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @I2C_CLASS_DDC, align 4
  %26 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %27 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %34 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32* %32, i32** %36, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %39 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %38, i32 0, i32 2
  store %struct.drm_device* %37, %struct.drm_device** %39, align 8
  %40 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %47 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %46, i32 0, i32 0
  %48 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %49 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %47, %struct.radeon_i2c_chan* %48)
  %50 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %51 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %54 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %55, align 8
  %56 = load i32, i32* @radeon_dp_i2c_aux_ch, align 4
  %57 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %58 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 8
  %61 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %62 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %66 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %65, i32 0, i32 0
  %67 = call i32 @i2c_dp_aux_add_bus(%struct.TYPE_11__* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %15
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  br label %75

73:                                               ; preds = %15
  %74 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  store %struct.radeon_i2c_chan* %74, %struct.radeon_i2c_chan** %4, align 8
  br label %78

75:                                               ; preds = %70
  %76 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %8, align 8
  %77 = call i32 @kfree(%struct.radeon_i2c_chan* %76)
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %78

78:                                               ; preds = %75, %73, %14
  %79 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %4, align 8
  ret %struct.radeon_i2c_chan* %79
}

declare dso_local %struct.radeon_i2c_chan* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.radeon_i2c_chan*) #1

declare dso_local i32 @i2c_dp_aux_add_bus(%struct.TYPE_11__*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.radeon_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
