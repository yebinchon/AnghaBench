; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_legacy_perf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_perf.c_legacy_perf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i8*, i64 }
%struct.nouveau_pm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"BMP version too old for perf\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No memclock table pointer found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unknown memclock table version %x.\0A\00", align 1
@NV_PEXTDEV_BOOT_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"performance_level_0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @legacy_perf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_perf_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca %struct.nouveau_pm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %12)
  store %struct.nouveau_device* %13, %struct.nouveau_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %4, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  store %struct.nvbios* %17, %struct.nvbios** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %18)
  store %struct.nouveau_pm* %19, %struct.nouveau_pm** %6, align 8
  %20 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %21 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %24 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp slt i32 %36, 20
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %1
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %40 = call i32 @NV_DEBUG(%struct.nouveau_drm* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %110

41:                                               ; preds = %32
  %42 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 115
  %45 = load i8, i8* %44, align 1
  %46 = call i8* @ROMPTR(%struct.drm_device* %42, i8 signext %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %51 = call i32 @NV_DEBUG(%struct.nouveau_drm* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %110

52:                                               ; preds = %41
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %68 [
    i32 18, label %57
    i32 20, label %57
    i32 24, label %57
    i32 1, label %58
  ]

57:                                               ; preds = %52, %52, %52
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %74

58:                                               ; preds = %52
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 8, i32 2
  store i32 %67, i32* %10, align 4
  br label %74

68:                                               ; preds = %52
  %69 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @NV_WARN(%struct.nouveau_drm* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8 signext %72)
  br label %110

74:                                               ; preds = %58, %57
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %83 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %84 = call i32 @nv_rd32(%struct.nouveau_device* %82, i32 %83)
  %85 = and i32 %84, 60
  %86 = ashr i32 %85, 1
  %87 = load i8*, i8** %8, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %81, %74
  %91 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %92 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sprintf(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @ROM16(i8 signext %100)
  %102 = mul nsw i32 %101, 20
  %103 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %104 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.nouveau_pm*, %struct.nouveau_pm** %6, align 8
  %109 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %90, %68, %49, %38
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i8* @ROMPTR(%struct.drm_device*, i8 signext) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i8 signext) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @ROM16(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
