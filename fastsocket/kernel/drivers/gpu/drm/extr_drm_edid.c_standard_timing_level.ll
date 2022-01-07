; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_standard_timing_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_standard_timing_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32, i32 }

@DRM_EDID_FEATURE_DEFAULT_GTF = common dso_local global i32 0, align 4
@LEVEL_CVT = common dso_local global i32 0, align 4
@LEVEL_GTF2 = common dso_local global i32 0, align 4
@LEVEL_GTF = common dso_local global i32 0, align 4
@LEVEL_DMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edid*)* @standard_timing_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @standard_timing_level(%struct.edid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edid*, align 8
  store %struct.edid* %0, %struct.edid** %3, align 8
  %4 = load %struct.edid*, %struct.edid** %3, align 8
  %5 = getelementptr inbounds %struct.edid, %struct.edid* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.edid*, %struct.edid** %3, align 8
  %10 = getelementptr inbounds %struct.edid, %struct.edid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.edid*, %struct.edid** %3, align 8
  %15 = getelementptr inbounds %struct.edid, %struct.edid* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DRM_EDID_FEATURE_DEFAULT_GTF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @LEVEL_CVT, align 4
  store i32 %21, i32* %2, align 4
  br label %32

22:                                               ; preds = %13, %8
  %23 = load %struct.edid*, %struct.edid** %3, align 8
  %24 = call i64 @drm_gtf2_hbreak(%struct.edid* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @LEVEL_GTF2, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @LEVEL_GTF, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @LEVEL_DMT, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %26, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @drm_gtf2_hbreak(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
