; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_rep_event_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_set_rep_event_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.ib_cm_rep_event_param = type { i32, i32, i32, i32, i32, i32 }

@IB_CM_REP_PRIVATE_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_event*, %struct.ib_cm_rep_event_param*, i8*)* @cma_set_rep_event_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_set_rep_event_data(%struct.rdma_cm_event* %0, %struct.ib_cm_rep_event_param* %1, i8* %2) #0 {
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.ib_cm_rep_event_param*, align 8
  %6 = alloca i8*, align 8
  store %struct.rdma_cm_event* %0, %struct.rdma_cm_event** %4, align 8
  store %struct.ib_cm_rep_event_param* %1, %struct.ib_cm_rep_event_param** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* @IB_CM_REP_PRIVATE_DATA_SIZE, align 4
  %13 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  store i32 %12, i32* %16, align 8
  %17 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %5, align 8
  %18 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %21 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32 %19, i32* %23, align 4
  %24 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %5, align 8
  %25 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %28 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 8
  %31 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %5, align 8
  %32 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %35 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %5, align 8
  %39 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %42 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 8
  %45 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %5, align 8
  %46 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %5, align 8
  %53 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %56 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
