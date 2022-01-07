; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_prog_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_prog_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvc0_pm_clock = type { i32, i32, i32, i32, i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nvc0_pm_clock*)* @prog_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_clk(%struct.drm_device* %0, i32 %1, %struct.nvc0_pm_clock* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvc0_pm_clock*, align 8
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvc0_pm_clock* %2, %struct.nvc0_pm_clock** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %16 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 4
  %23 = add nsw i32 1274320, %22
  %24 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %25 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nv_mask(%struct.nouveau_device* %20, i32 %23, i32 -2147467457, i32 %26)
  %28 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 4
  %31 = add nsw i32 1274208, %30
  %32 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %33 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nv_wr32(%struct.nouveau_device* %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %19, %14, %3
  %37 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = call i32 @nv_mask(%struct.nouveau_device* %37, i32 1274112, i32 %39, i32 0)
  %41 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = call i32 @nv_wait(%struct.nouveau_device* %41, i32 1274112, i32 %43, i32 0)
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 7
  br i1 %46, label %47, label %93

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 32
  %50 = add nsw i32 1273856, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 0
  %54 = call i32 @nv_rd32(%struct.nouveau_device* %51, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 0
  %62 = call i32 @nv_mask(%struct.nouveau_device* %59, i32 %61, i32 4, i32 0)
  %63 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 0
  %66 = call i32 @nv_mask(%struct.nouveau_device* %63, i32 %65, i32 1, i32 0)
  br label %67

67:                                               ; preds = %58, %47
  %68 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %69 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 4
  %76 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %77 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @nv_wr32(%struct.nouveau_device* %73, i32 %75, i32 %78)
  %80 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 0
  %83 = call i32 @nv_mask(%struct.nouveau_device* %80, i32 %82, i32 1, i32 1)
  %84 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 0
  %87 = call i32 @nv_wait(%struct.nouveau_device* %84, i32 %86, i32 131072, i32 131072)
  %88 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 0
  %91 = call i32 @nv_mask(%struct.nouveau_device* %88, i32 %90, i32 131076, i32 4)
  br label %92

92:                                               ; preds = %72, %67
  br label %93

93:                                               ; preds = %92, %36
  %94 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 1, %95
  %97 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %98 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nv_mask(%struct.nouveau_device* %94, i32 1274112, i32 %96, i32 %99)
  %101 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 1, %102
  %104 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %105 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nv_wait(%struct.nouveau_device* %101, i32 1274112, i32 %103, i32 %106)
  %108 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %109 = load i32, i32* %5, align 4
  %110 = mul nsw i32 %109, 4
  %111 = add nsw i32 1274448, %110
  %112 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %113 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nv_mask(%struct.nouveau_device* %108, i32 %111, i32 16191, i32 %114)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
