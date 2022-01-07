; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_check_placement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_check_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ttm_placement = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_check_placement(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_placement*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %4, align 8
  %5 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %6 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9, %2
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %20 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %23 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = icmp sgt i64 %18, %25
  br label %27

27:                                               ; preds = %14, %9
  %28 = phi i1 [ false, %9 ], [ %26, %14 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
