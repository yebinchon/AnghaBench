; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve_nolru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_reserve_nolru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i64, i32, i32 }

@EDEADLK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  br label %14

14:                                               ; preds = %71, %5
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 3
  %17 = call i64 @atomic_xchg(i32* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %14
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EDEADLK, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %111

42:                                               ; preds = %30
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = icmp slt i64 %47, -2147483648
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %111

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %25, %22
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %111

62:                                               ; preds = %56
  %63 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ttm_bo_wait_unreserved(%struct.ttm_buffer_object* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %111

71:                                               ; preds = %62
  br label %14

72:                                               ; preds = %14
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %77 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub nsw i64 %78, %79
  %81 = icmp slt i64 %80, -2147483648
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %84 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %75
  %89 = phi i1 [ true, %75 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %97 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %99 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %104 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %103, i32 0, i32 2
  %105 = call i32 @wake_up_all(i32* %104)
  br label %106

106:                                              ; preds = %102, %94
  br label %110

107:                                              ; preds = %72
  %108 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %109 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %106
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %69, %59, %52, %39
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @ttm_bo_wait_unreserved(%struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
