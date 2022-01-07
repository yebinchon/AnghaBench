; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_object.c_ttm_object_file_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_object.c_ttm_object_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_file = type { i32*, i32, i32, %struct.ttm_object_device*, i32 }
%struct.ttm_object_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TTM_REF_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_object_file* @ttm_object_file_init(%struct.ttm_object_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_object_file*, align 8
  %4 = alloca %struct.ttm_object_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_object_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_object_device* %0, %struct.ttm_object_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ttm_object_file* @kmalloc(i32 32, i32 %10)
  store %struct.ttm_object_file* %11, %struct.ttm_object_file** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %13 = icmp eq %struct.ttm_object_file* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.ttm_object_file* null, %struct.ttm_object_file** %3, align 8
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %19, i32 0, i32 4
  %21 = call i32 @rwlock_init(i32* %20)
  %22 = load %struct.ttm_object_device*, %struct.ttm_object_device** %4, align 8
  %23 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %24 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %23, i32 0, i32 3
  store %struct.ttm_object_device* %22, %struct.ttm_object_device** %24, align 8
  %25 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %26 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %25, i32 0, i32 2
  %27 = call i32 @kref_init(i32* %26)
  %28 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %29 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %49, %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TTM_REF_NUM, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %37 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @drm_ht_create(i32* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %8, align 4
  br label %54

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  store %struct.ttm_object_file* %53, %struct.ttm_object_file** %3, align 8
  br label %73

54:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %61 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @drm_ht_remove(i32* %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %72 = call i32 @kfree(%struct.ttm_object_file* %71)
  store %struct.ttm_object_file* null, %struct.ttm_object_file** %3, align 8
  br label %73

73:                                               ; preds = %70, %52, %17
  %74 = load %struct.ttm_object_file*, %struct.ttm_object_file** %3, align 8
  ret %struct.ttm_object_file* %74
}

declare dso_local %struct.ttm_object_file* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_ht_create(i32*, i32) #1

declare dso_local i32 @drm_ht_remove(i32*) #1

declare dso_local i32 @kfree(%struct.ttm_object_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
