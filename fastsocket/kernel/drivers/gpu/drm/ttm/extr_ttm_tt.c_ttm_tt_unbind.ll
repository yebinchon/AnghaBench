; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_tt*)* }

@tt_bound = common dso_local global i64 0, align 8
@tt_unbound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_tt_unbind(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  %3 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %4 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @tt_bound, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %13, align 8
  %15 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %16 = call i32 %14(%struct.ttm_tt* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* @tt_unbound, align 8
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %21 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
