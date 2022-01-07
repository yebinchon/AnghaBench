; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { i32 }
%struct.fb_image = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_device = type { i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@NV_50 = common dso_local global i64 0, align 8
@NV_C0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @nouveau_fbcon_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_fbcon_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.nouveau_fbdev*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %10, align 8
  store %struct.nouveau_fbdev* %11, %struct.nouveau_fbdev** %5, align 8
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %13 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_drm(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %6, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nouveau_device* @nv_device(i32 %18)
  store %struct.nouveau_device* %19, %struct.nouveau_device** %7, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %90

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  %29 = call i32 (...) @in_interrupt()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %74, label %31

31:                                               ; preds = %26
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %74, label %38

38:                                               ; preds = %31
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @mutex_trylock(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %46 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NV_50, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %52 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %53 = call i32 @nv04_fbcon_imageblit(%struct.fb_info* %51, %struct.fb_image* %52)
  store i32 %53, i32* %8, align 4
  br label %69

54:                                               ; preds = %44
  %55 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %56 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NV_C0, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %63 = call i32 @nv50_fbcon_imageblit(%struct.fb_info* %61, %struct.fb_image* %62)
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %67 = call i32 @nvc0_fbcon_imageblit(%struct.fb_info* %65, %struct.fb_image* %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %69, %38, %31, %26
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %89 = call i32 @cfb_imageblit(%struct.fb_info* %87, %struct.fb_image* %88)
  br label %90

90:                                               ; preds = %86, %77, %25
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @nv04_fbcon_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @nv50_fbcon_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @nvc0_fbcon_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
