; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__*, %struct.drm_device* }
%struct.TYPE_8__ = type { %struct.drm_connector* }
%struct.drm_connector = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.drm_connector*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@oops_in_progress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @drm_fb_helper_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_fb_helper_dpms(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %12, align 8
  store %struct.drm_fb_helper* %13, %struct.drm_fb_helper** %5, align 8
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 4
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load i64, i64* @oops_in_progress, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = call i32 @drm_modeset_lock_all(%struct.drm_device* %21)
  %23 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %24 = call i32 @drm_fb_helper_is_bound(%struct.drm_fb_helper* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %27)
  br label %94

29:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %88, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %33 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %30
  %37 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %38 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %44, align 8
  store %struct.drm_crtc* %45, %struct.drm_crtc** %7, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  br label %88

51:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %55 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %60 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.drm_connector*, %struct.drm_connector** %66, align 8
  store %struct.drm_connector* %67, %struct.drm_connector** %8, align 8
  %68 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %69 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32 (%struct.drm_connector*, i32)*, i32 (%struct.drm_connector*, i32)** %71, align 8
  %73 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 %72(%struct.drm_connector* %73, i32 %74)
  %76 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %77 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %76, i32 0, i32 0
  %78 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @drm_object_property_set_value(i32* %77, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %58
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %52

87:                                               ; preds = %52
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %30

91:                                               ; preds = %30
  %92 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %93 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %92)
  br label %94

94:                                               ; preds = %91, %26, %19
  ret void
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_is_bound(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
