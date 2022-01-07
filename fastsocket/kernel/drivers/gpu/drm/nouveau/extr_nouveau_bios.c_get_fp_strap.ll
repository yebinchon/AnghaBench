; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_get_fp_strap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_get_fp_strap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32, i32* }
%struct.nouveau_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@NV_PEXTDEV_BOOT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*)* @get_fp_strap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fp_strap(%struct.drm_device* %0, %struct.nvbios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nvbios* %1, %struct.nvbios** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %7)
  store %struct.nouveau_device* %8, %struct.nouveau_device** %6, align 8
  %9 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %10 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %15 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 72
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = call i32 @NVReadVgaCrtc5758(%struct.drm_device* %22, i32 0, i32 15)
  %24 = and i32 %23, 15
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %13, %2
  %26 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NV_50, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %33 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %34 = call i32 @nv_rd32(%struct.nouveau_device* %32, i32 %33)
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 15
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %39 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %40 = call i32 @nv_rd32(%struct.nouveau_device* %38, i32 %39)
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 15
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %31, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc5758(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
