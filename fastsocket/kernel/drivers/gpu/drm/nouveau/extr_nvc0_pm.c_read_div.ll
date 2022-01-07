; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_read_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_read_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32)* @read_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_div(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %15)
  store %struct.nouveau_device* %16, %struct.nouveau_device** %10, align 8
  %17 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 4
  %21 = add nsw i32 %18, %20
  %22 = call i32 @nv_rd32(%struct.nouveau_device* %17, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %24, %26
  %28 = call i32 @nv_rd32(%struct.nouveau_device* %23, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 3
  switch i32 %30, label %63 [
    i32 0, label %31
    i32 2, label %37
    i32 3, label %38
  ]

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 196608
  %34 = icmp ne i32 %33, 196608
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 27000, i32* %5, align 4
  br label %64

36:                                               ; preds = %31
  store i32 108000, i32* %5, align 4
  br label %64

37:                                               ; preds = %4
  store i32 100000, i32* %5, align 4
  br label %64

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, -2147483648
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %44, %46
  %48 = call i32 @read_vco(%struct.drm_device* %43, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, 63
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %52, 2
  %54 = load i32, i32* %14, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %64

56:                                               ; preds = %38
  %57 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 %58, %60
  %62 = call i32 @read_vco(%struct.drm_device* %57, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %56, %42, %37, %36, %35
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @read_vco(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
