; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_bind_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_bind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ib = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.sockaddr*, %struct.sockaddr*)* @cma_bind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_bind_addr(%struct.rdma_cm_id* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %8 = icmp ne %struct.sockaddr* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %9, %3
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %5, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %14
  %31 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in6*
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %53

38:                                               ; preds = %14
  %39 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_IB, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_ib*
  %47 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %50 = bitcast %struct.sockaddr* %49 to %struct.sockaddr_ib*
  %51 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %38
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %9
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %57 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %55, %struct.sockaddr* %56)
  ret i32 %57
}

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
