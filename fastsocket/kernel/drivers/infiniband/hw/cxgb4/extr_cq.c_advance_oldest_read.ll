; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cq.c_advance_oldest_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cq.c_advance_oldest_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@FW_RI_READ_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*)* @advance_oldest_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_oldest_read(%struct.t4_wq* %0) #0 {
  %2 = alloca %struct.t4_wq*, align 8
  %3 = alloca i64, align 8
  store %struct.t4_wq* %0, %struct.t4_wq** %2, align 8
  %4 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %5 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %9 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = ptrtoint %struct.TYPE_3__* %7 to i64
  %13 = ptrtoint %struct.TYPE_3__* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %19 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %23, %1
  br label %25

25:                                               ; preds = %60, %24
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %28 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %34 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %40 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %43 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FW_RI_READ_REQ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %65

51:                                               ; preds = %32
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  %54 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %55 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i64 0, i64* %3, align 8
  br label %60

60:                                               ; preds = %59, %51
  br label %25

61:                                               ; preds = %25
  %62 = load %struct.t4_wq*, %struct.t4_wq** %2, align 8
  %63 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %64, align 8
  br label %65

65:                                               ; preds = %61, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
