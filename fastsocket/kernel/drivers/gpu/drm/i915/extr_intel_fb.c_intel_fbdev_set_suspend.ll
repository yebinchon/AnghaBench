; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intel_fbdev_set_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intel_fbdev_set_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.intel_fbdev* }
%struct.intel_fbdev = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.fb_info* }
%struct.fb_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbdev_set_suspend(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.intel_fbdev*, align 8
  %7 = alloca %struct.fb_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.intel_fbdev*, %struct.intel_fbdev** %12, align 8
  store %struct.intel_fbdev* %13, %struct.intel_fbdev** %6, align 8
  %14 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %15 = icmp ne %struct.intel_fbdev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %19 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.fb_info*, %struct.fb_info** %20, align 8
  store %struct.fb_info* %21, %struct.fb_info** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %26 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset_io(i32 %35, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %32, %24, %17
  %41 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @fb_set_suspend(%struct.fb_info* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
