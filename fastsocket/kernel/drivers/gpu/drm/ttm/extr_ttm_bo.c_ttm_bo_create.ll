; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.file = type { i32 }
%struct.ttm_buffer_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_create(%struct.ttm_bo_device* %0, i64 %1, i32 %2, %struct.ttm_placement* %3, i32 %4, i32 %5, %struct.file* %6, %struct.ttm_buffer_object** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttm_placement*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.file*, align 8
  %17 = alloca %struct.ttm_buffer_object**, align 8
  %18 = alloca %struct.ttm_buffer_object*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.ttm_placement* %3, %struct.ttm_placement** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.file* %6, %struct.file** %16, align 8
  store %struct.ttm_buffer_object** %7, %struct.ttm_buffer_object*** %17, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ttm_buffer_object* @kzalloc(i32 4, i32 %21)
  store %struct.ttm_buffer_object* %22, %struct.ttm_buffer_object** %18, align 8
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %18, align 8
  %24 = icmp eq %struct.ttm_buffer_object* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %55

31:                                               ; preds = %8
  %32 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @ttm_bo_acc_size(%struct.ttm_bo_device* %32, i64 %33, i32 4)
  store i64 %34, i64* %19, align 8
  %35 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %18, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.ttm_placement*, %struct.ttm_placement** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.file*, %struct.file** %16, align 8
  %43 = load i64, i64* %19, align 8
  %44 = call i32 @ttm_bo_init(%struct.ttm_bo_device* %35, %struct.ttm_buffer_object* %36, i64 %37, i32 %38, %struct.ttm_placement* %39, i32 %40, i32 %41, %struct.file* %42, i64 %43, i32* null, i32* null)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %18, align 8
  %52 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %17, align 8
  store %struct.ttm_buffer_object* %51, %struct.ttm_buffer_object** %52, align 8
  br label %53

53:                                               ; preds = %50, %31
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %28
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.ttm_buffer_object* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_bo_acc_size(%struct.ttm_bo_device*, i64, i32) #1

declare dso_local i32 @ttm_bo_init(%struct.ttm_bo_device*, %struct.ttm_buffer_object*, i64, i32, %struct.ttm_placement*, i32, i32, %struct.file*, i64, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
