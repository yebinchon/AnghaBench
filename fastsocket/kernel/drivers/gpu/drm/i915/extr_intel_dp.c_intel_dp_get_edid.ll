; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.intel_connector = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.edid* (%struct.drm_connector*, %struct.i2c_adapter*)* @intel_dp_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.edid* @intel_dp_get_edid(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.edid*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.intel_connector*, align 8
  %7 = alloca %struct.edid*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %9)
  store %struct.intel_connector* %10, %struct.intel_connector** %6, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i64 @IS_ERR(%struct.TYPE_3__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.edid* null, %struct.edid** %3, align 8
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %24 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @EDID_LENGTH, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.edid* @kmalloc(i32 %31, i32 %32)
  store %struct.edid* %33, %struct.edid** %7, align 8
  %34 = load %struct.edid*, %struct.edid** %7, align 8
  %35 = icmp ne %struct.edid* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store %struct.edid* null, %struct.edid** %3, align 8
  br label %49

37:                                               ; preds = %22
  %38 = load %struct.edid*, %struct.edid** %7, align 8
  %39 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %40 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @memcpy(%struct.edid* %38, %struct.TYPE_3__* %41, i32 %42)
  %44 = load %struct.edid*, %struct.edid** %7, align 8
  store %struct.edid* %44, %struct.edid** %3, align 8
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %48 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %46, %struct.i2c_adapter* %47)
  store %struct.edid* %48, %struct.edid** %3, align 8
  br label %49

49:                                               ; preds = %45, %37, %36, %21
  %50 = load %struct.edid*, %struct.edid** %3, align 8
  ret %struct.edid* %50
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_3__*) #1

declare dso_local %struct.edid* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.edid*, %struct.TYPE_3__*, i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
