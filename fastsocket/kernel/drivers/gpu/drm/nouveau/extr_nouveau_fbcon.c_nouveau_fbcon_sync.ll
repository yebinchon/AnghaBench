; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__, %struct.nouveau_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_channel = type { i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @nouveau_fbcon_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fbcon_sync(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %9, align 8
  store %struct.nouveau_fbdev* %10, %struct.nouveau_fbdev** %4, align 8
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nouveau_drm* @nouveau_drm(i32 %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %5, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 1
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %16, align 8
  store %struct.nouveau_channel* %17, %struct.nouveau_channel** %6, align 8
  %18 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %19 = icmp ne %struct.nouveau_channel* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = call i64 (...) @in_interrupt()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %28, %25, %20, %1
  store i32 0, i32* %2, align 4
  br label %64

42:                                               ; preds = %34
  %43 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %44 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @mutex_trylock(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %64

49:                                               ; preds = %42
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %51 = call i32 @nouveau_channel_idle(%struct.nouveau_channel* %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %59)
  store i32 0, i32* %2, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %63 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %58, %48, %41
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @nouveau_channel_idle(%struct.nouveau_channel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
