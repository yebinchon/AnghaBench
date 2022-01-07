; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_drm = type { %struct.nouveau_fbdev*, i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_8__, %struct.drm_device* }
%struct.TYPE_8__ = type { i32* }
%struct.nouveau_fb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_fbcon_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fbcon_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_fb*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %4, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nouveau_fb* @nouveau_fb(i32 %13)
  store %struct.nouveau_fb* %14, %struct.nouveau_fb** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nouveau_fbdev* @kzalloc(i32 16, i32 %22)
  store %struct.nouveau_fbdev* %23, %struct.nouveau_fbdev** %6, align 8
  %24 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %25 = icmp ne %struct.nouveau_fbdev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %21
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %32 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %31, i32 0, i32 1
  store %struct.drm_device* %30, %struct.drm_device** %32, align 8
  %33 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %34, i32 0, i32 0
  store %struct.nouveau_fbdev* %33, %struct.nouveau_fbdev** %35, align 8
  %36 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %37 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32* @nouveau_fbcon_helper_funcs, i32** %38, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %41 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %40, i32 0, i32 0
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @drm_fb_helper_init(%struct.drm_device* %39, %struct.TYPE_8__* %41, i32 %45, i32 4)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  %50 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %51 = call i32 @kfree(%struct.nouveau_fbdev* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %79

53:                                               ; preds = %29
  %54 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %55 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %54, i32 0, i32 0
  %56 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_8__* %55)
  %57 = load %struct.nouveau_fb*, %struct.nouveau_fb** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 33554432
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 8, i32* %7, align 4
  br label %72

63:                                               ; preds = %53
  %64 = load %struct.nouveau_fb*, %struct.nouveau_fb** %5, align 8
  %65 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 67108864
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 16, i32* %7, align 4
  br label %71

70:                                               ; preds = %63
  store i32 32, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %73)
  %75 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %76 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @drm_fb_helper_initial_config(%struct.TYPE_8__* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %49, %26, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(i32) #1

declare dso_local %struct.nouveau_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nouveau_fbdev*) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
