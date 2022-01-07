; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_vblank_disable_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_vblank_disable_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i64*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"disabling vblank on crtc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vblank_disable_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vblank_disable_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.drm_device*
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @vblank_disable_and_save(%struct.drm_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %33, %20
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 1
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %14

56:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @vblank_disable_and_save(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
