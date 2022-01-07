; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intel_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intel_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.intel_fbdev* }
%struct.intel_fbdev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_fb_helper_funcs = common dso_local global i32 0, align 4
@INTELFB_CONN_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_fbdev*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.intel_fbdev* @kzalloc(i32 8, i32 %10)
  store %struct.intel_fbdev* %11, %struct.intel_fbdev** %4, align 8
  %12 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %13 = icmp ne %struct.intel_fbdev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.intel_fbdev* %18, %struct.intel_fbdev** %20, align 8
  %21 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %22 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32* @intel_fb_helper_funcs, i32** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %26 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @INTELFB_CONN_LIMIT, align 4
  %31 = call i32 @drm_fb_helper_init(%struct.drm_device* %24, %struct.TYPE_5__* %26, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %17
  %35 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %36 = call i32 @kfree(%struct.intel_fbdev* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %17
  %39 = load %struct.intel_fbdev*, %struct.intel_fbdev** %4, align 8
  %40 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %39, i32 0, i32 0
  %41 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_5__* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %34, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.intel_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_fbdev*) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
