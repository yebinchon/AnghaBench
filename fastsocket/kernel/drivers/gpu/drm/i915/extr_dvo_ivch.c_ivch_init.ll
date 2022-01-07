; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.ivch_priv*, %struct.i2c_adapter* }
%struct.ivch_priv = type { i32, i32, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VR00 = common dso_local global i32 0, align 4
@VR00_BASE_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ivch detect failed due to address mismatch (%d vs %d)\0A\00", align 1
@VR20 = common dso_local global i32 0, align 4
@VR21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)* @ivch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivch_init(%struct.intel_dvo_device* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.ivch_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ivch_priv* @kzalloc(i32 12, i32 %8)
  store %struct.ivch_priv* %9, %struct.ivch_priv** %6, align 8
  %10 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %11 = icmp eq %struct.ivch_priv* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %16 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %15, i32 0, i32 2
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %16, align 8
  %17 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %18 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %19 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %18, i32 0, i32 1
  store %struct.ivch_priv* %17, %struct.ivch_priv** %19, align 8
  %20 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %23 = load i32, i32* @VR00, align 4
  %24 = call i32 @ivch_read(%struct.intel_dvo_device* %22, i32 %23, i32* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %56

27:                                               ; preds = %13
  %28 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @VR00_BASE_ADDRESS_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %34 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @VR00_BASE_ADDRESS_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %42 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %56

45:                                               ; preds = %27
  %46 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %47 = load i32, i32* @VR20, align 4
  %48 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %48, i32 0, i32 1
  %50 = call i32 @ivch_read(%struct.intel_dvo_device* %46, i32 %47, i32* %49)
  %51 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %52 = load i32, i32* @VR21, align 4
  %53 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %54 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %53, i32 0, i32 2
  %55 = call i32 @ivch_read(%struct.intel_dvo_device* %51, i32 %52, i32* %54)
  store i32 1, i32* %3, align 4
  br label %59

56:                                               ; preds = %37, %26
  %57 = load %struct.ivch_priv*, %struct.ivch_priv** %6, align 8
  %58 = call i32 @kfree(%struct.ivch_priv* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %45, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ivch_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ivch_read(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ivch_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
