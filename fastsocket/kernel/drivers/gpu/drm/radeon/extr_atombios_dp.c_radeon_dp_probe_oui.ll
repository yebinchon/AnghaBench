; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_probe_oui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_probe_oui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32* }

@DP_DOWN_STREAM_PORT_COUNT = common dso_local global i64 0, align 8
@DP_OUI_SUPPORT = common dso_local global i32 0, align 4
@DP_SINK_OUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sink OUI: %02hx%02hx%02hx\0A\00", align 1
@DP_BRANCH_OUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Branch OUI: %02hx%02hx%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_connector*)* @radeon_dp_probe_oui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_dp_probe_oui(%struct.radeon_connector* %0) #0 {
  %2 = alloca %struct.radeon_connector*, align 8
  %3 = alloca %struct.radeon_connector_atom_dig*, align 8
  %4 = alloca [3 x i32], align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %2, align 8
  %5 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %5, i32 0, i32 0
  %7 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  store %struct.radeon_connector_atom_dig* %7, %struct.radeon_connector_atom_dig** %3, align 8
  %8 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @DP_DOWN_STREAM_PORT_COUNT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DP_OUI_SUPPORT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %20 = load i32, i32* @DP_SINK_OUI, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %22 = call i64 @radeon_dp_aux_native_read(%struct.radeon_connector* %19, i32 %20, i32* %21, i32 3, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %24, %18
  %33 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %34 = load i32, i32* @DP_BRANCH_OUI, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %36 = call i64 @radeon_dp_aux_native_read(%struct.radeon_connector* %33, i32 %34, i32* %35, i32 3, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %17, %38, %32
  ret void
}

declare dso_local i64 @radeon_dp_aux_native_read(%struct.radeon_connector*, i32, i32*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
