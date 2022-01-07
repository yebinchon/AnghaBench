; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_resume_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_resume_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.drm_file = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Starting radeon_do_resume_cp()\0A\00", align 1
@RADEON_SW_INT_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"radeon_do_resume_cp() complete\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @radeon_do_resume_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_do_resume_cp(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i32 @radeon_set_pcigart(%struct.TYPE_5__* %18, i32 1)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = call i32 @radeon_cp_load_microcode(%struct.TYPE_5__* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %25 = call i32 @radeon_cp_init_ring_buffer(%struct.drm_device* %22, %struct.TYPE_5__* %23, %struct.drm_file* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @radeon_do_engine_reset(%struct.drm_device* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = load i32, i32* @RADEON_SW_INT_ENABLE, align 4
  %32 = call i32 @radeon_irq_set_state(%struct.drm_device* %30, i32 %31, i32 1)
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %16, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @radeon_set_pcigart(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @radeon_cp_load_microcode(%struct.TYPE_5__*) #1

declare dso_local i32 @radeon_cp_init_ring_buffer(%struct.drm_device*, %struct.TYPE_5__*, %struct.drm_file*) #1

declare dso_local i32 @radeon_do_engine_reset(%struct.drm_device*) #1

declare dso_local i32 @radeon_irq_set_state(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
