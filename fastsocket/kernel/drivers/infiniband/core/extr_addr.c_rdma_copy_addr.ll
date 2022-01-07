; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_rdma_copy_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_rdma_copy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_dev_addr = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i8*, i8*, i32, i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_copy_addr(%struct.rdma_dev_addr* %0, %struct.net_device* %1, i8* %2) #0 {
  %4 = alloca %struct.rdma_dev_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  store %struct.rdma_dev_addr* %0, %struct.rdma_dev_addr** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %13 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @MAX_ADDR_LEN, align 4
  %19 = call i32 @memcpy(i32 %14, i8* %17, i32 %18)
  %20 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %21 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @MAX_ADDR_LEN, align 4
  %27 = call i32 @memcpy(i32 %22, i8* %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %32 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @MAX_ADDR_LEN, align 4
  %36 = call i32 @memcpy(i32 %33, i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %3
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %42 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
