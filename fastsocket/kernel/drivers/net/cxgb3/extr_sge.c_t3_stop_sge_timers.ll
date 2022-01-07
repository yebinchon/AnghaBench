; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_stop_sge_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_stop_sge_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SGE_QSETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_stop_sge_timers(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_qset*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SGE_QSETS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i64 %15
  store %struct.sge_qset* %16, %struct.sge_qset** %4, align 8
  %17 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %18 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %24 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %23, i32 0, i32 1
  %25 = call i32 @del_timer_sync(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %22, %9
  %27 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %28 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %34 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %33, i32 0, i32 0
  %35 = call i32 @del_timer_sync(%struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %5

40:                                               ; preds = %5
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
