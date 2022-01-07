; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ns2501.c_ns2501_writeb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ns2501.c_ns2501_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, %struct.i2c_adapter*, %struct.ns2501_priv* }
%struct.i2c_adapter = type { i32 }
%struct.ns2501_priv = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to write register 0x%02x to %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dvo_device*, i32, i32)* @ns2501_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2501_writeb(%struct.intel_dvo_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dvo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ns2501_priv*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %13 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %12, i32 0, i32 2
  %14 = load %struct.ns2501_priv*, %struct.ns2501_priv** %13, align 8
  store %struct.ns2501_priv* %14, %struct.ns2501_priv** %8, align 8
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %16 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %15, i32 0, i32 1
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %16, align 8
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %9, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %23 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %24 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %31 = call i32 @i2c_transfer(%struct.i2c_adapter* %30, %struct.i2c_msg* %11, i32 1)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %49

34:                                               ; preds = %3
  %35 = load %struct.ns2501_priv*, %struct.ns2501_priv** %8, align 8
  %36 = getelementptr inbounds %struct.ns2501_priv, %struct.ns2501_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %5, align 8
  %45 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
