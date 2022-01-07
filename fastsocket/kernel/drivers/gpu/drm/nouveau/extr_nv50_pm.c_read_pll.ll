; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_read_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@clk_src_dom6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @read_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %7, align 8
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %22 = call i32 @nv_rd32(%struct.nouveau_device* %21, i32 49216)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 0
  %26 = call i32 @nv_rd32(%struct.nouveau_device* %23, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @nv_rd32(%struct.nouveau_device* %27, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @read_pll_ref(%struct.drm_device* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 16424
  br i1 %35, label %36, label %53

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 1048576
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_2__* @nv_device(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 160
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = load i32, i32* @clk_src_dom6, align 4
  %51 = call i32 @read_clk(%struct.drm_device* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %94

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %36, %2
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, -16777216
  %56 = lshr i32 %55, 24
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 16711680
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 65280
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 255
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, -2147483648
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %53
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %15, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 1073742080
  %79 = icmp eq i32 %78, 1073741824
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %16, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %12, align 4
  br label %90

89:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %68, %53
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %48
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @read_pll_ref(%struct.drm_device*, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @read_clk(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
