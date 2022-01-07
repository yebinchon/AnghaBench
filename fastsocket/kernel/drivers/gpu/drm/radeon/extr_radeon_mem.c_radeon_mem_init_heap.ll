; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_radeon_mem_init_heap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_radeon_mem_init_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mem_block = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"heap already initialized?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_mem_init_heap(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.mem_block**, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mem_block** @get_heap(i32* %23, i32 %26)
  store %struct.mem_block** %27, %struct.mem_block*** %10, align 8
  %28 = load %struct.mem_block**, %struct.mem_block*** %10, align 8
  %29 = icmp ne %struct.mem_block** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %22
  %34 = load %struct.mem_block**, %struct.mem_block*** %10, align 8
  %35 = load %struct.mem_block*, %struct.mem_block** %34, align 8
  %36 = icmp ne %struct.mem_block* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.mem_block**, %struct.mem_block*** %10, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @init_heap(%struct.mem_block** %42, i32 %45, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %37, %30, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.mem_block** @get_heap(i32*, i32) #1

declare dso_local i32 @init_heap(%struct.mem_block**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
