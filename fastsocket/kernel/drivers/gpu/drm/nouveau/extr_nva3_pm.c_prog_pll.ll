; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_prog_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_prog_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.creg = type { i32, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no clock for %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, %struct.creg*)* @prog_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_pll(%struct.drm_device* %0, i32 %1, i32 %2, %struct.creg* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.creg*, align 8
  %9 = alloca %struct.nouveau_device*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.creg* %3, %struct.creg** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %15)
  store %struct.nouveau_device* %16, %struct.nouveau_device** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 4
  %21 = add nsw i32 16672, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 4
  %24 = add nsw i32 16736, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 0
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.creg*, %struct.creg** %8, align 8
  %30 = getelementptr inbounds %struct.creg, %struct.creg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %4
  %34 = load %struct.creg*, %struct.creg** %8, align 8
  %35 = getelementptr inbounds %struct.creg, %struct.creg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @NV_DEBUG(%struct.nouveau_drm* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %99

42:                                               ; preds = %33, %4
  %43 = load %struct.creg*, %struct.creg** %8, align 8
  %44 = getelementptr inbounds %struct.creg, %struct.creg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @nv_mask(%struct.nouveau_device* %48, i32 %49, i32 257, i32 257)
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.creg*, %struct.creg** %8, align 8
  %54 = getelementptr inbounds %struct.creg, %struct.creg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nv_wr32(%struct.nouveau_device* %51, i32 %52, i32 %55)
  %57 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @nv_mask(%struct.nouveau_device* %57, i32 %58, i32 21, i32 21)
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @nv_mask(%struct.nouveau_device* %60, i32 %61, i32 16, i32 0)
  %63 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @nv_wait(%struct.nouveau_device* %63, i32 %64, i32 131072, i32 131072)
  %66 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @nv_mask(%struct.nouveau_device* %66, i32 %67, i32 16, i32 16)
  %69 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @nv_mask(%struct.nouveau_device* %69, i32 %70, i32 8, i32 0)
  %72 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @nv_mask(%struct.nouveau_device* %72, i32 %73, i32 256, i32 0)
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @nv_mask(%struct.nouveau_device* %75, i32 %76, i32 1, i32 0)
  br label %99

78:                                               ; preds = %42
  %79 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.creg*, %struct.creg** %8, align 8
  %82 = getelementptr inbounds %struct.creg, %struct.creg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 257, %83
  %85 = call i32 @nv_mask(%struct.nouveau_device* %79, i32 %80, i32 4141377, i32 %84)
  %86 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @nv_mask(%struct.nouveau_device* %86, i32 %87, i32 24, i32 24)
  %89 = call i32 @udelay(i32 20)
  %90 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @nv_mask(%struct.nouveau_device* %90, i32 %91, i32 1, i32 0)
  %93 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @nv_mask(%struct.nouveau_device* %93, i32 %94, i32 256, i32 0)
  %96 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @nv_mask(%struct.nouveau_device* %96, i32 %97, i32 1, i32 0)
  br label %99

99:                                               ; preds = %38, %78, %47
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
