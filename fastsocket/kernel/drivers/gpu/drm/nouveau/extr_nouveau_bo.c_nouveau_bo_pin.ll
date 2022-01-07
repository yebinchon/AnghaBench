; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"bo %p pinned elsewhere: 0x%08x vs 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_pin(%struct.nouveau_bo* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_drm* @nouveau_bdev(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %5, align 8
  %13 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %13, i32 0, i32 1
  store %struct.ttm_buffer_object* %14, %struct.ttm_buffer_object** %6, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %16 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %15, i32 0, i32 0, i32 0, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %89

20:                                               ; preds = %2
  %21 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %25
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @NV_ERROR(%struct.nouveau_drm* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.ttm_buffer_object* %36, i32 %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %89

46:                                               ; preds = %25, %20
  %47 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %89

53:                                               ; preds = %46
  %54 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %54, i32 %55, i32 0)
  %57 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %58 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %57, i32 0, i32 0)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %53
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %63 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %86 [
    i32 128, label %66
    i32 129, label %76
  ]

66:                                               ; preds = %61
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %68 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %72 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %87

76:                                               ; preds = %61
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %82 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %87

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86, %76, %66
  br label %88

88:                                               ; preds = %87, %53
  br label %89

89:                                               ; preds = %88, %52, %34, %19
  %90 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %91 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, %struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nouveau_bo_validate(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
