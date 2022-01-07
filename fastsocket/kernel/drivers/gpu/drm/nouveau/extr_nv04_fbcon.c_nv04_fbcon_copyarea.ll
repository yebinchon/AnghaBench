; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@NvSubImageBlit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_copyarea*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %11, align 8
  store %struct.nouveau_fbdev* %12, %struct.nouveau_fbdev** %6, align 8
  %13 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_drm* @nouveau_drm(i32 %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %7, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %18, align 8
  store %struct.nouveau_channel* %19, %struct.nouveau_channel** %8, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %21 = call i32 @RING_SPACE(%struct.nouveau_channel* %20, i32 4)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %28 = load i32, i32* @NvSubImageBlit, align 4
  %29 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %27, i32 %28, i32 768, i32 3)
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %31 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %32 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %36 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = call i32 @OUT_RING(%struct.nouveau_channel* %30, i32 %38)
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %41 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %42 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %46 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = call i32 @OUT_RING(%struct.nouveau_channel* %40, i32 %48)
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %51 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %52 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.fb_copyarea*, %struct.fb_copyarea** %5, align 8
  %56 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  %59 = call i32 @OUT_RING(%struct.nouveau_channel* %50, i32 %58)
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %61 = call i32 @FIRE_RING(%struct.nouveau_channel* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %26, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
