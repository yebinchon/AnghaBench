; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_dispatch_qp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_dispatch_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }
%struct.ehca_qp = type { i64, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, {}* }

@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@EQPT_SRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, %struct.ehca_qp*, i32)* @dispatch_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_qp_event(%struct.ehca_shca* %0, %struct.ehca_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.ehca_shca*, align 8
  %5 = alloca %struct.ehca_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_event, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %4, align 8
  store %struct.ehca_qp* %1, %struct.ehca_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %72

17:                                               ; preds = %11, %3
  %18 = load %struct.ehca_shca*, %struct.ehca_shca** %4, align 8
  %19 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 2
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %24 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EQPT_SRQ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %17
  %29 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %30 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = bitcast {}** %31 to i32 (%struct.ib_event*, i32)**
  %33 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.ib_event*, i32)* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %72

36:                                               ; preds = %28
  %37 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %38 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %42 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = bitcast {}** %43 to i32 (%struct.ib_event*, i32)**
  %45 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %44, align 8
  %46 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %47 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %45(%struct.ib_event* %7, i32 %49)
  br label %72

51:                                               ; preds = %17
  %52 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.ib_event*, i32)* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %72

58:                                               ; preds = %51
  %59 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %60 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %65, align 8
  %67 = load %struct.ehca_qp*, %struct.ehca_qp** %5, align 8
  %68 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(%struct.ib_event* %7, i32 %70)
  br label %72

72:                                               ; preds = %16, %35, %57, %58, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
