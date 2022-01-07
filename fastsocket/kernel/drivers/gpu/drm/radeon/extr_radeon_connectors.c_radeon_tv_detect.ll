; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_tv_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_tv_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque
%struct.radeon_connector = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_tv_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_tv_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %10)
  store %struct.radeon_connector* %11, %struct.radeon_connector** %8, align 8
  %12 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %14 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %20)
  store %struct.drm_encoder* %21, %struct.drm_encoder** %6, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %23 = icmp ne %struct.drm_encoder* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %25, i32* %9, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %27, i32 0, i32 0
  %29 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %28, align 8
  store %struct.drm_encoder_helper_funcs* %29, %struct.drm_encoder_helper_funcs** %7, align 8
  %30 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %7, align 8
  %31 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %31, align 8
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %34 = bitcast %struct.drm_encoder* %33 to %struct.drm_encoder.0*
  %35 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %36 = bitcast %struct.drm_connector* %35 to %struct.drm_connector.1*
  %37 = call i32 %32(%struct.drm_encoder.0* %34, %struct.drm_connector.1* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %26, %24
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @connector_status_connected, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %44 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector* %43, %struct.drm_encoder* %44, i32 %45, i32 0)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_analog_encoder_conflict_solve(%struct.drm_connector*, %struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
