; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_save_net_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_save_net_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ib_cm_event = type { %struct.cma_hdr*, %struct.TYPE_10__ }
%struct.cma_hdr = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@AF_IB = common dso_local global i64 0, align 8
@CMA_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_id*, %struct.ib_cm_event*)* @cma_save_net_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_save_net_info(%struct.rdma_cm_id* %0, %struct.rdma_cm_id* %1, %struct.ib_cm_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.rdma_cm_id*, align 8
  %7 = alloca %struct.ib_cm_event*, align 8
  %8 = alloca %struct.cma_hdr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %5, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %6, align 8
  store %struct.ib_cm_event* %2, %struct.ib_cm_event** %7, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_IB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %19 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %20 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %21 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cma_save_ib_info(%struct.rdma_cm_id* %18, %struct.rdma_cm_id* %19, i32 %24)
  store i32 0, i32* %4, align 4
  br label %55

26:                                               ; preds = %3
  %27 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %28 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %27, i32 0, i32 0
  %29 = load %struct.cma_hdr*, %struct.cma_hdr** %28, align 8
  store %struct.cma_hdr* %29, %struct.cma_hdr** %8, align 8
  %30 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CMA_VERSION, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %55

38:                                               ; preds = %26
  %39 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %40 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %39)
  switch i32 %40, label %51 [
    i32 4, label %41
    i32 6, label %46
  ]

41:                                               ; preds = %38
  %42 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %43 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %44 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %45 = call i32 @cma_save_ip4_info(%struct.rdma_cm_id* %42, %struct.rdma_cm_id* %43, %struct.cma_hdr* %44)
  br label %54

46:                                               ; preds = %38
  %47 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %49 = load %struct.cma_hdr*, %struct.cma_hdr** %8, align 8
  %50 = call i32 @cma_save_ip6_info(%struct.rdma_cm_id* %47, %struct.rdma_cm_id* %48, %struct.cma_hdr* %49)
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %46, %41
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51, %35, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @cma_save_ib_info(%struct.rdma_cm_id*, %struct.rdma_cm_id*, i32) #1

declare dso_local i32 @cma_get_ip_ver(%struct.cma_hdr*) #1

declare dso_local i32 @cma_save_ip4_info(%struct.rdma_cm_id*, %struct.rdma_cm_id*, %struct.cma_hdr*) #1

declare dso_local i32 @cma_save_ip6_info(%struct.rdma_cm_id*, %struct.rdma_cm_id*, %struct.cma_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
