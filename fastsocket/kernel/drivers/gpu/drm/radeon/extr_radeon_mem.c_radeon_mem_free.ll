; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_radeon_mem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_radeon_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mem_block = type { %struct.drm_file* }

@.str = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_mem_free(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
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
  br label %62

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
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
  br label %62

38:                                               ; preds = %31
  %39 = load %struct.mem_block**, %struct.mem_block*** %11, align 8
  %40 = load %struct.mem_block*, %struct.mem_block** %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.mem_block* @find_block(%struct.mem_block* %40, i32 %43)
  store %struct.mem_block* %44, %struct.mem_block** %10, align 8
  %45 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %46 = icmp ne %struct.mem_block* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %52 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %51, i32 0, i32 0
  %53 = load %struct.drm_file*, %struct.drm_file** %52, align 8
  %54 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %55 = icmp ne %struct.drm_file* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %61 = call i32 @free_block(%struct.mem_block* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %56, %47, %35, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.mem_block** @get_heap(i32*, i32) #1

declare dso_local %struct.mem_block* @find_block(%struct.mem_block*, i32) #1

declare dso_local i32 @free_block(%struct.mem_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
