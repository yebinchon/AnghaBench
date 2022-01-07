; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_response_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_ib_response_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_BM = common dso_local global i64 0, align 8
@IB_BM_ATTR_MOD_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_response_mad(%struct.ib_mad* %0) #0 {
  %2 = alloca %struct.ib_mad*, align 8
  store %struct.ib_mad* %0, %struct.ib_mad** %2, align 8
  %3 = load %struct.ib_mad*, %struct.ib_mad** %2, align 8
  %4 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = load %struct.ib_mad*, %struct.ib_mad** %2, align 8
  %12 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IB_MGMT_METHOD_TRAP_REPRESS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %10
  %18 = load %struct.ib_mad*, %struct.ib_mad** %2, align 8
  %19 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_MGMT_CLASS_BM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.ib_mad*, %struct.ib_mad** %2, align 8
  %26 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IB_BM_ATTR_MOD_RESP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %24, %17
  %33 = phi i1 [ false, %17 ], [ %31, %24 ]
  br label %34

34:                                               ; preds = %32, %10, %1
  %35 = phi i1 [ true, %10 ], [ true, %1 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
