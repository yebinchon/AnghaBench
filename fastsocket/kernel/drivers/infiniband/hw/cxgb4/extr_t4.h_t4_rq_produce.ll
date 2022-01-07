; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_rq_produce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_rq_produce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@T4_EQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@T4_RQ_NUM_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*, i32)* @t4_rq_produce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_rq_produce(%struct.t4_wq* %0, i32 %1) #0 {
  %3 = alloca %struct.t4_wq*, align 8
  %4 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %6 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %11 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %16 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %22 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 16
  %27 = load i32, i32* @T4_EQ_ENTRY_SIZE, align 4
  %28 = call i64 @DIV_ROUND_UP(i32 %26, i32 %27)
  %29 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %30 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %37 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %41 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @T4_RQ_NUM_SLOTS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp sge i32 %39, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %24
  %48 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %49 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @T4_RQ_NUM_SLOTS, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %55 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %47, %24
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
