; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.i2c_adapter*, %struct.ivch_priv* }
%struct.i2c_adapter = type { i32 }
%struct.ivch_priv = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to read register 0x%02x from %s:%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, i32, i32*)* @ivch_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivch_read(%struct.intel_dvo_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dvo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ivch_priv*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [3 x %struct.i2c_msg], align 16
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %14 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %13, i32 0, i32 2
  %15 = load %struct.ivch_priv*, %struct.ivch_priv** %14, align 8
  store %struct.ivch_priv* %15, %struct.ivch_priv** %8, align 8
  %16 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %17 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %16, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %9, align 8
  %19 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %25 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %26 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* @I2C_M_NOSTART, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 1
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i32, i32* @I2C_M_RD, align 4
  %38 = load i32, i32* @I2C_M_NOSTART, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %36, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  store i32 2, i32* %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 2
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %42, i32** %41, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 3
  %44 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %45 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %43, align 8
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %50 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %12, i64 0, i64 0
  %51 = call i32 @i2c_transfer(%struct.i2c_adapter* %49, %struct.i2c_msg* %50, i32 3)
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %61

53:                                               ; preds = %3
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %56, %58
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %4, align 4
  br label %76

61:                                               ; preds = %3
  %62 = load %struct.ivch_priv*, %struct.ivch_priv** %8, align 8
  %63 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %69 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %72 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %61
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
