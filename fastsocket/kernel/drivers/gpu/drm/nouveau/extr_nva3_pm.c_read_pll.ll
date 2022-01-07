; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_read_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_read_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @read_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %15)
  store %struct.nouveau_device* %16, %struct.nouveau_device** %8, align 8
  %17 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 0
  %20 = call i32 @nv_rd32(%struct.nouveau_device* %17, i32 %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 4
  %32 = call i32 @nv_rd32(%struct.nouveau_device* %29, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = and i32 %33, 255
  %35 = ashr i32 %34, 0
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, 65280
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, 4128768
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 65280
  %44 = icmp eq i32 %43, 59392
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 0, %48
  %50 = call i32 @read_clk(%struct.drm_device* %47, i32 %49, i32 0)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %24
  br label %57

52:                                               ; preds = %3
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 16, %54
  %56 = call i32 @read_clk(%struct.drm_device* %53, i32 %55, i32 0)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @read_clk(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
