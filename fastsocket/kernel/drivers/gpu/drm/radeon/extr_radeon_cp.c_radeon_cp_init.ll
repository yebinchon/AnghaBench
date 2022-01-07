; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_cp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_cp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cp_init(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %15, %struct.drm_file* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call i32 @r300_init_reg_flags(%struct.drm_device* %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %53 [
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
    i32 128, label %34
    i32 132, label %39
  ]

29:                                               ; preds = %25, %25, %25
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %33 = call i32 @radeon_do_init_cp(%struct.drm_device* %30, %struct.TYPE_6__* %31, %struct.drm_file* %32)
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %38 = call i32 @r600_do_init_cp(%struct.drm_device* %35, %struct.TYPE_6__* %36, %struct.drm_file* %37)
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CHIP_R600, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = call i32 @r600_do_cleanup_cp(%struct.drm_device* %48)
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = call i32 @radeon_do_cleanup_cp(%struct.drm_device* %51)
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %25
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %50, %47, %34, %29
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @r300_init_reg_flags(%struct.drm_device*) #1

declare dso_local i32 @radeon_do_init_cp(%struct.drm_device*, %struct.TYPE_6__*, %struct.drm_file*) #1

declare dso_local i32 @r600_do_init_cp(%struct.drm_device*, %struct.TYPE_6__*, %struct.drm_file*) #1

declare dso_local i32 @r600_do_cleanup_cp(%struct.drm_device*) #1

declare dso_local i32 @radeon_do_cleanup_cp(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
