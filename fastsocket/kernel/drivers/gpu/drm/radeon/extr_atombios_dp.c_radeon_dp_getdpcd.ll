; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_getdpcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_getdpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i64* }

@DP_DPCD_SIZE = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DPCD: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_getdpcd(%struct.radeon_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.radeon_connector_atom_dig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %3, align 8
  %10 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %10, i32 0, i32 0
  %12 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %11, align 8
  store %struct.radeon_connector_atom_dig* %12, %struct.radeon_connector_atom_dig** %4, align 8
  %13 = load i32, i32* @DP_DPCD_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %18 = load i32, i32* @DP_DPCD_REV, align 4
  %19 = load i32, i32* @DP_DPCD_SIZE, align 4
  %20 = call i32 @radeon_dp_aux_native_read(%struct.radeon_connector* %17, i32 %18, i32* %16, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %1
  %24 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* @DP_DPCD_SIZE, align 4
  %28 = call i32 @memcpy(i64* %26, i32* %16, i32 %27)
  %29 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %40, %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DP_DPCD_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %16, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %30

43:                                               ; preds = %30
  %44 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %46 = call i32 @radeon_dp_probe_oui(%struct.radeon_connector* %45)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %52

47:                                               ; preds = %1
  %48 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %49 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @radeon_dp_aux_native_read(%struct.radeon_connector*, i32, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i64*, i32*, i32) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #2

declare dso_local i32 @radeon_dp_probe_oui(%struct.radeon_connector*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
