; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_sq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.t4_swsqe* }
%struct.t4_swsqe = type { i64 }
%struct.t4_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_flush_sq(%struct.t4_wq* %0, %struct.t4_cq* %1, i32 %2) #0 {
  %4 = alloca %struct.t4_wq*, align 8
  %5 = alloca %struct.t4_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.t4_swsqe*, align 8
  %9 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %4, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %11 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load %struct.t4_swsqe*, %struct.t4_swsqe** %12, align 8
  %14 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %15 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %13, i64 %20
  store %struct.t4_swsqe* %21, %struct.t4_swsqe** %8, align 8
  %22 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %23 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  br label %32

32:                                               ; preds = %62, %3
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %38 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %40 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %41 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %42 = call i32 @insert_sq_cqe(%struct.t4_wq* %39, %struct.t4_cq* %40, %struct.t4_swsqe* %41)
  %43 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %44 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %43, i32 1
  store %struct.t4_swsqe* %44, %struct.t4_swsqe** %8, align 8
  %45 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %46 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %47 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load %struct.t4_swsqe*, %struct.t4_swsqe** %48, align 8
  %50 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %51 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %49, i64 %54
  %56 = icmp eq %struct.t4_swsqe* %45, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %59 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load %struct.t4_swsqe*, %struct.t4_swsqe** %60, align 8
  store %struct.t4_swsqe* %61, %struct.t4_swsqe** %8, align 8
  br label %62

62:                                               ; preds = %57, %36
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @insert_sq_cqe(%struct.t4_wq*, %struct.t4_cq*, %struct.t4_swsqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
