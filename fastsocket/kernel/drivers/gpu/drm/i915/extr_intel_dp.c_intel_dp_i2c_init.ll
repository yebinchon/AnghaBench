; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_i2c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.intel_connector = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"i2c_init %s\0A\00", align 1
@intel_dp_i2c_aux_ch = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, %struct.intel_connector*, i8*)* @intel_dp_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_i2c_init(%struct.intel_dp* %0, %struct.intel_connector* %1, i8* %2) #0 {
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %11 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @intel_dp_i2c_aux_ch, align 4
  %17 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 0
  %22 = call i32 @memset(%struct.TYPE_9__* %21, i8 signext 0, i32 32)
  %23 = load i32, i32* @THIS_MODULE, align 4
  %24 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @I2C_CLASS_DDC, align 4
  %28 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strncpy(i8* %34, i8* %35, i32 7)
  %37 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 7
  store i8 0, i8* %41, align 1
  %42 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %43 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %42, i32 0, i32 1
  %44 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %45 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %48 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %51 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* %49, i32** %53, align 8
  %54 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %55 = call i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp* %54)
  %56 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 0
  %58 = call i32 @i2c_dp_aux_add_bus(%struct.TYPE_9__* %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %60 = call i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp* %59, i32 0)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp*) #1

declare dso_local i32 @i2c_dp_aux_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
