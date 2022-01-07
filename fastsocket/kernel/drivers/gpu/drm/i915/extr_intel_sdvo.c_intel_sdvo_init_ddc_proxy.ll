; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_init_ddc_proxy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_init_ddc_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.intel_sdvo*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SDVO DDC proxy\00", align 1
@intel_sdvo_ddc_proxy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.drm_device*)* @intel_sdvo_init_ddc_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_init_ddc_proxy(%struct.intel_sdvo* %0, %struct.drm_device* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.drm_device* %1, %struct.drm_device** %4, align 8
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* @I2C_CLASS_DDC, align 4
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 4
  %13 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %14 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I2C_NAME_SIZE, align 4
  %18 = call i32 @snprintf(i32 %16, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* %22, i32** %26, align 8
  %27 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %28 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %29 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.intel_sdvo* %27, %struct.intel_sdvo** %30, align 8
  %31 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %32 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32* @intel_sdvo_ddc_proxy, i32** %33, align 8
  %34 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %35 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %34, i32 0, i32 0
  %36 = call i64 @i2c_add_adapter(%struct.TYPE_6__* %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
