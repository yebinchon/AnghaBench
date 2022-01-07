; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }
%struct.drm_connector = type { i32 }
%struct.intel_tv = type { i32 }
%struct.intel_load_detect_pipe = type { i32 }

@reported_modes = common dso_local global %struct.drm_display_mode* null, align 8
@connector_status_unknown = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_tv_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_display_mode, align 4
  %7 = alloca %struct.intel_tv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_load_detect_pipe, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %10)
  store %struct.intel_tv* %11, %struct.intel_tv** %7, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** @reported_modes, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i64 0
  %14 = bitcast %struct.drm_display_mode* %6 to i8*
  %15 = bitcast %struct.drm_display_mode* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = call i64 @intel_get_load_detect_pipe(%struct.drm_connector* %19, %struct.drm_display_mode* %6, %struct.intel_load_detect_pipe* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.intel_tv*, %struct.intel_tv** %7, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = call i32 @intel_tv_detect_type(%struct.intel_tv* %23, %struct.drm_connector* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = call i32 @intel_release_load_detect_pipe(%struct.drm_connector* %26, %struct.intel_load_detect_pipe* %9)
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @connector_status_unknown, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %22
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.intel_tv*, %struct.intel_tv** %7, align 8
  %43 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %45 = call i32 @intel_tv_find_better_format(%struct.drm_connector* %44)
  %46 = load i32, i32* @connector_status_connected, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %38, %31, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @intel_get_load_detect_pipe(%struct.drm_connector*, %struct.drm_display_mode*, %struct.intel_load_detect_pipe*) #1

declare dso_local i32 @intel_tv_detect_type(%struct.intel_tv*, %struct.drm_connector*) #1

declare dso_local i32 @intel_release_load_detect_pipe(%struct.drm_connector*, %struct.intel_load_detect_pipe*) #1

declare dso_local i32 @intel_tv_find_better_format(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
