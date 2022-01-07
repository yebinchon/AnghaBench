; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_read_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_clk(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca %struct.nouveau_drm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %13)
  store %struct.nouveau_device* %14, %struct.nouveau_device** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_2__* @nv_device(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 175
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %29 = call i32 @nv_rd32(%struct.nouveau_device* %28, i32 18204)
  %30 = mul nsw i32 %29, 1000
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %19
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %33 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 4
  %39 = add nsw i32 16672, %38
  %40 = call i32 @nv_rd32(%struct.nouveau_device* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 256
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %74

48:                                               ; preds = %43, %35
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 12288
  switch i32 %50, label %73 [
    i32 0, label %51
    i32 8192, label %55
    i32 12288, label %61
  ]

51:                                               ; preds = %48
  %52 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %53 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 64
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 108000, i32* %4, align 4
  br label %74

60:                                               ; preds = %55
  store i32 100000, i32* %4, align 4
  br label %74

61:                                               ; preds = %48
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @read_vco(%struct.drm_device* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 4128768
  %67 = ashr i32 %66, 16
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = mul nsw i32 %69, 2
  %71 = load i32, i32* %11, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %61, %60, %59, %51, %47, %31, %27
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @read_vco(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
