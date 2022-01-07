; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_radeon_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_radeon_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.mem_block = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"copy_to_user\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_mem_alloc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.mem_block*, align 8
  %11 = alloca %struct.mem_block**, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %75

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mem_block** @get_heap(i32* %24, i32 %27)
  store %struct.mem_block** %28, %struct.mem_block*** %11, align 8
  %29 = load %struct.mem_block**, %struct.mem_block*** %11, align 8
  %30 = icmp ne %struct.mem_block** %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.mem_block**, %struct.mem_block*** %11, align 8
  %33 = load %struct.mem_block*, %struct.mem_block** %32, align 8
  %34 = icmp ne %struct.mem_block* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %31
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 12
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 12, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.mem_block**, %struct.mem_block*** %11, align 8
  %48 = load %struct.mem_block*, %struct.mem_block** %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %56 = call %struct.mem_block* @alloc_block(%struct.mem_block* %48, i32 %51, i32 %54, %struct.drm_file* %55)
  store %struct.mem_block* %56, %struct.mem_block** %10, align 8
  %57 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %58 = icmp ne %struct.mem_block* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %46
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %67 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %66, i32 0, i32 0
  %68 = call i64 @DRM_COPY_TO_USER(i32 %65, i32* %67, i32 4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EFAULT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %70, %59, %35, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.mem_block** @get_heap(i32*, i32) #1

declare dso_local %struct.mem_block* @alloc_block(%struct.mem_block*, i32, i32, %struct.drm_file*) #1

declare dso_local i64 @DRM_COPY_TO_USER(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
