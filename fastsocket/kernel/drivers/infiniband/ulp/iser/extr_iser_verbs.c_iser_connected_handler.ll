; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connected_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.iser_conn = type { i32, i32 }

@ISER_CONN_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @iser_connected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_connected_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %4 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %5 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.iser_conn*
  store %struct.iser_conn* %7, %struct.iser_conn** %3, align 8
  %8 = load i32, i32* @ISER_CONN_UP, align 4
  %9 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 0
  %13 = call i32 @wake_up_interruptible(i32* %12)
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
