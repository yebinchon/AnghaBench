; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_acr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_hdmi_acr = type { i64, i32, i32, i32, i32, i32, i32 }

@r600_hdmi_predefined_acr = common dso_local global %struct.radeon_hdmi_acr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_acr(%struct.radeon_hdmi_acr* noalias sret %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %23, %2
  %6 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** @r600_hdmi_predefined_acr, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %6, i64 %7
  %9 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** @r600_hdmi_predefined_acr, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %14, i64 %15
  %17 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %13, %5
  %21 = phi i1 [ false, %5 ], [ %19, %13 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %5

26:                                               ; preds = %20
  %27 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** @r600_hdmi_predefined_acr, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %27, i64 %28
  %30 = bitcast %struct.radeon_hdmi_acr* %0 to i8*
  %31 = bitcast %struct.radeon_hdmi_acr* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 32, i1 false)
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %0, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @r600_hdmi_calc_cts(i64 %32, i32* %33, i32 %35, i32 32000)
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %0, i32 0, i32 4
  %39 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %0, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @r600_hdmi_calc_cts(i64 %37, i32* %38, i32 %40, i32 44100)
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %0, i32 0, i32 2
  %44 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %0, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @r600_hdmi_calc_cts(i64 %42, i32* %43, i32 %45, i32 48000)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @r600_hdmi_calc_cts(i64, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
