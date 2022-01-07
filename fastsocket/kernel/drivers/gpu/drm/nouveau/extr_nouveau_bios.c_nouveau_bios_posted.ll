; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_posted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_posted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @nouveau_bios_posted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bios_posted(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %6)
  store %struct.nouveau_drm* %7, %struct.nouveau_drm** %4, align 8
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* @nv_device(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NV_50, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i32 @NVReadVgaCrtc(%struct.drm_device* %17, i32 0, i32 0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call i32 @NVReadVgaCrtc(%struct.drm_device* %21, i32 0, i32 26)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %56

25:                                               ; preds = %20, %16
  store i32 1, i32* %2, align 4
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call i32 @NVReadVgaCrtc(%struct.drm_device* %27, i32 0, i32 6)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = call i32 @NVReadVgaCrtc(%struct.drm_device* %29, i32 0, i32 7)
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = call i32 @NVReadVgaCrtc(%struct.drm_device* %35, i32 0, i32 7)
  %37 = and i32 %36, 32
  %38 = shl i32 %37, 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i32 @NVReadVgaCrtc(%struct.drm_device* %41, i32 0, i32 37)
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 10
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = call i32 @NVReadVgaCrtc(%struct.drm_device* %47, i32 0, i32 65)
  %49 = and i32 %48, 1
  %50 = shl i32 %49, 11
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %26, %25, %24
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
