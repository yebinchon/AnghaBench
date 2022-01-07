; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_addr_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_addr_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.rdma_dev_addr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*)* @addr_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_resolve(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %7, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in*
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  %18 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %19 = call i32 @addr4_resolve(%struct.sockaddr_in* %15, %struct.sockaddr_in* %17, %struct.rdma_dev_addr* %18)
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in6*
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = bitcast %struct.sockaddr* %23 to %struct.sockaddr_in6*
  %25 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %26 = call i32 @addr6_resolve(%struct.sockaddr_in6* %22, %struct.sockaddr_in6* %24, %struct.rdma_dev_addr* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @addr4_resolve(%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.rdma_dev_addr*) #1

declare dso_local i32 @addr6_resolve(%struct.sockaddr_in6*, %struct.sockaddr_in6*, %struct.rdma_dev_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
