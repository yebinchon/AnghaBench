; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_nouveau_perf_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bit_entry = type { i32, i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"where's our volt map table ptr? %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"volt map table pointer invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_pm_level*)* @nouveau_perf_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_perf_voltage(%struct.drm_device* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_pm_level*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.bit_entry, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %5, align 8
  %11 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 10000
  %26 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %29 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %97

33:                                               ; preds = %2
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = call i64 @bit_table(%struct.drm_device* %34, i8 signext 80, %struct.bit_entry* %6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 34
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %37, %33
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %47 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %50)
  br label %97

52:                                               ; preds = %41
  %53 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %54 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %6, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 32
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @ROMPTR(%struct.drm_device* %53, i32 %57)
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %63 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %97

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %73, %78
  %80 = load i32*, i32** %7, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @ROM32(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %89 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @ROM32(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %96 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %23, %45, %61, %70, %64
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local i32* @ROMPTR(%struct.drm_device*, i32) #1

declare dso_local i8* @ROM32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
