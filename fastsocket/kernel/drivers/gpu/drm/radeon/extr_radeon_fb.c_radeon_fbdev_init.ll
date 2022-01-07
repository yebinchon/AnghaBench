; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.radeon_fbdev* }
%struct.radeon_fbdev = type { %struct.TYPE_8__, %struct.radeon_device* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@radeon_fb_helper_funcs = common dso_local global i32 0, align 4
@RADEONFB_CONN_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fbdev_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fbdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 32, i32* %5, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i64 @ASIC_IS_RN50(%struct.radeon_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 33554432
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 8, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.radeon_fbdev* @kzalloc(i32 16, i32 %18)
  store %struct.radeon_fbdev* %19, %struct.radeon_fbdev** %4, align 8
  %20 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %21 = icmp ne %struct.radeon_fbdev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %64

25:                                               ; preds = %17
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %27, i32 0, i32 1
  store %struct.radeon_device* %26, %struct.radeon_device** %28, align 8
  %29 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.radeon_fbdev* %29, %struct.radeon_fbdev** %32, align 8
  %33 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32* @radeon_fb_helper_funcs, i32** %35, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %39, i32 0, i32 0
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RADEONFB_CONN_LIMIT, align 4
  %45 = call i32 @drm_fb_helper_init(i32 %38, %struct.TYPE_8__* %40, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %50 = call i32 @kfree(%struct.radeon_fbdev* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %64

52:                                               ; preds = %25
  %53 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %54 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %53, i32 0, i32 0
  %55 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_8__* %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @drm_helper_disable_unused_functions(i32 %58)
  %60 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @drm_fb_helper_initial_config(%struct.TYPE_8__* %61, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %52, %48, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @ASIC_IS_RN50(%struct.radeon_device*) #1

declare dso_local %struct.radeon_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_init(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.radeon_fbdev*) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(i32) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
