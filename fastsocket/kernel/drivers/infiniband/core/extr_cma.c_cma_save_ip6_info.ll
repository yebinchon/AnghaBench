; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_save_ip6_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_save_ip6_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cma_hdr = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, %struct.rdma_cm_id*, %struct.cma_hdr*)* @cma_save_ip6_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_save_ip6_info(%struct.rdma_cm_id* %0, %struct.rdma_cm_id* %1, %struct.cma_hdr* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.cma_hdr*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %5, align 8
  store %struct.cma_hdr* %2, %struct.cma_hdr** %6, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %7, align 8
  %14 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %8, align 8
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %36 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %39, %struct.sockaddr_in6** %8, align 8
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cma_hdr*, %struct.cma_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
