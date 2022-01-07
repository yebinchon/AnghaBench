; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_rdma_get_service_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_rdma_get_service_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_ib = type { i32 }

@AF_IB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_get_service_id(%struct.rdma_cm_id* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_IB, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_ib*
  %14 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 16
  %22 = sext i32 %21 to i64
  %23 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %24 = call i32 @cma_port(%struct.sockaddr* %23)
  %25 = call i64 @be16_to_cpu(i32 %24)
  %26 = add nsw i64 %22, %25
  %27 = call i32 @cpu_to_be64(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @cma_port(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
