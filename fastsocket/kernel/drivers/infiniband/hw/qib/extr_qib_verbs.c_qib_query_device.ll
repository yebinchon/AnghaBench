; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_query_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qib_devdata = type { i32, i32 }
%struct.qib_ibdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_DEVICE_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_BAD_QKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_SRQ_RESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@QIB_SRC_OUI_1 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_2 = common dso_local global i32 0, align 4
@QIB_SRC_OUI_3 = common dso_local global i32 0, align 4
@ib_qib_sys_image_guid = common dso_local global i32 0, align 4
@ib_qib_max_qps = common dso_local global i32 0, align 4
@ib_qib_max_qp_wrs = common dso_local global i32 0, align 4
@ib_qib_max_sges = common dso_local global i32 0, align 4
@ib_qib_max_cqs = common dso_local global i32 0, align 4
@ib_qib_max_ahs = common dso_local global i32 0, align 4
@ib_qib_max_cqes = common dso_local global i32 0, align 4
@ib_qib_max_pds = common dso_local global i32 0, align 4
@QIB_MAX_RDMA_ATOMIC = common dso_local global i32 0, align 4
@ib_qib_max_srqs = common dso_local global i32 0, align 4
@ib_qib_max_srq_wrs = common dso_local global i32 0, align 4
@ib_qib_max_srq_sges = common dso_local global i32 0, align 4
@IB_ATOMIC_GLOB = common dso_local global i32 0, align 4
@ib_qib_max_mcast_grps = common dso_local global i32 0, align 4
@ib_qib_max_mcast_qp_attached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*)* @qib_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca %struct.qib_ibdev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %7)
  store %struct.qib_devdata* %8, %struct.qib_devdata** %5, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %9)
  store %struct.qib_ibdev* %10, %struct.qib_ibdev** %6, align 8
  %11 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %12 = call i32 @memset(%struct.ib_device_attr* %11, i32 0, i32 112)
  %13 = load i32, i32* @IB_DEVICE_BAD_PKEY_CNTR, align 4
  %14 = load i32, i32* @IB_DEVICE_BAD_QKEY_CNTR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IB_DEVICE_SRQ_RESIZE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %30 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %29, i32 0, i32 26
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @QIB_SRC_OUI_1, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* @QIB_SRC_OUI_2, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = load i32, i32* @QIB_SRC_OUI_3, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %44 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %43, i32 0, i32 25
  store i32 %42, i32* %44, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %49 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %48, i32 0, i32 24
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ib_qib_sys_image_guid, align 4
  %51 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %52 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %51, i32 0, i32 23
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %54 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %53, i32 0, i32 2
  store i64 -1, i64* %54, align 8
  %55 = load i32, i32* @ib_qib_max_qps, align 4
  %56 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %57 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %56, i32 0, i32 22
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ib_qib_max_qp_wrs, align 4
  %59 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %60 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %59, i32 0, i32 21
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @ib_qib_max_sges, align 4
  %62 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %63 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %62, i32 0, i32 20
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ib_qib_max_cqs, align 4
  %65 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %66 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %65, i32 0, i32 19
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @ib_qib_max_ahs, align 4
  %68 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %69 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %68, i32 0, i32 18
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ib_qib_max_cqes, align 4
  %71 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %72 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %71, i32 0, i32 17
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qib_ibdev*, %struct.qib_ibdev** %6, align 8
  %74 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %78 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %77, i32 0, i32 16
  store i32 %76, i32* %78, align 4
  %79 = load %struct.qib_ibdev*, %struct.qib_ibdev** %6, align 8
  %80 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %84 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %83, i32 0, i32 15
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 3
  store i32 32767, i32* %86, align 8
  %87 = load i32, i32* @ib_qib_max_pds, align 4
  %88 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %89 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %88, i32 0, i32 14
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @QIB_MAX_RDMA_ATOMIC, align 4
  %91 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %92 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %94 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %93, i32 0, i32 4
  store i32 255, i32* %94, align 4
  %95 = load i32, i32* @ib_qib_max_srqs, align 4
  %96 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %97 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @ib_qib_max_srq_wrs, align 4
  %99 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %100 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @ib_qib_max_srq_sges, align 4
  %102 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %103 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @IB_ATOMIC_GLOB, align 4
  %105 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %106 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 8
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %108 = call i32 @qib_get_npkeys(%struct.qib_devdata* %107)
  %109 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %110 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @ib_qib_max_mcast_grps, align 4
  %112 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %113 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @ib_qib_max_mcast_qp_attached, align 4
  %115 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %116 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %121 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %119, %122
  %124 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %125 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 8
  ret i32 0
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @qib_get_npkeys(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
