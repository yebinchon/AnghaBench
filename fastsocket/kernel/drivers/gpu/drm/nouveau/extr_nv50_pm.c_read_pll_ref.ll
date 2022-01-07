; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_pll_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_pll_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }

@clk_src_crystal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad pll 0x%06x\0A\00", align 1
@clk_src_href = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @read_pll_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll_ref(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %7, align 8
  %14 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %15 = call i32 @nv_rd32(%struct.nouveau_device* %14, i32 49216)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %49 [
    i32 16424, label %17
    i32 16416, label %24
    i32 16392, label %31
    i32 16432, label %38
    i32 59408, label %45
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 2097152
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 4194304
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 65536
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %53

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 33554432
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = load i32, i32* @clk_src_crystal, align 4
  %48 = call i32 @read_clk(%struct.drm_device* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %2
  %50 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @NV_ERROR(%struct.nouveau_drm* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %3, align 4
  br label %64

53:                                               ; preds = %38, %31, %24, %17
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = load i32, i32* @clk_src_href, align 4
  %59 = call i32 @read_clk(%struct.drm_device* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @read_pll_src(%struct.drm_device* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %56, %49, %45
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @read_clk(%struct.drm_device*, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @read_pll_src(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
