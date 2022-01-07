; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve_slowpath_nolru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve_slowpath_nolru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_reserve_slowpath_nolru(%struct.ttm_buffer_object* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 3
  %13 = call i64 @atomic_xchg(i32* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %10
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i1 [ false, %18 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ttm_bo_wait_unreserved(%struct.ttm_buffer_object* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %29
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %44 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp slt i64 %47, -2147483648
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %42
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %60 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %65 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %64, i32 0, i32 2
  %66 = call i32 @wake_up_all(i32* %65)
  br label %67

67:                                               ; preds = %63, %55
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ttm_bo_wait_unreserved(%struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
