; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_get_tv_detect_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_get_tv_detect_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nouveau_object* }
%struct.nouveau_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32*)* @get_tv_detect_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tv_detect_quirks(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %6, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 0
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_object* %12, %struct.nouveau_object** %7, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %14 = call i64 @nv_device_match(%struct.nouveau_object* %13, i32 802, i32 6618, i32 4149)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %18 = call i64 @nv_device_match(%struct.nouveau_object* %17, i32 802, i32 6618, i32 8245)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %2
  %21 = load i32*, i32** %5, align 8
  store i32 12, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %24 = call i64 @nv_device_match(%struct.nouveau_object* %23, i32 496, i32 5218, i32 22288)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  store i32 12, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nv_device_match(%struct.nouveau_object*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
