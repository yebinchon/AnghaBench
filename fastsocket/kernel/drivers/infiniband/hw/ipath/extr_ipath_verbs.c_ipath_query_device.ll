; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_query_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipath_ibdev = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IB_DEVICE_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_BAD_QKEY_CNTR = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_SRQ_RESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IPATH_SRC_OUI_1 = common dso_local global i32 0, align 4
@IPATH_SRC_OUI_2 = common dso_local global i32 0, align 4
@IPATH_SRC_OUI_3 = common dso_local global i32 0, align 4
@ib_ipath_max_qps = common dso_local global i32 0, align 4
@ib_ipath_max_qp_wrs = common dso_local global i32 0, align 4
@ib_ipath_max_sges = common dso_local global i32 0, align 4
@ib_ipath_max_cqs = common dso_local global i32 0, align 4
@ib_ipath_max_ahs = common dso_local global i32 0, align 4
@ib_ipath_max_cqes = common dso_local global i32 0, align 4
@ib_ipath_max_pds = common dso_local global i32 0, align 4
@IPATH_MAX_RDMA_ATOMIC = common dso_local global i32 0, align 4
@ib_ipath_max_srqs = common dso_local global i32 0, align 4
@ib_ipath_max_srq_wrs = common dso_local global i32 0, align 4
@ib_ipath_max_srq_sges = common dso_local global i32 0, align 4
@IB_ATOMIC_GLOB = common dso_local global i32 0, align 4
@ib_ipath_max_mcast_grps = common dso_local global i32 0, align 4
@ib_ipath_max_mcast_qp_attached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*)* @ipath_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %7 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %6)
  store %struct.ipath_ibdev* %7, %struct.ipath_ibdev** %5, align 8
  %8 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %9 = call i32 @memset(%struct.ib_device_attr* %8, i32 0, i32 112)
  %10 = load i32, i32* @IB_DEVICE_BAD_PKEY_CNTR, align 4
  %11 = load i32, i32* @IB_DEVICE_BAD_QKEY_CNTR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IB_DEVICE_SRQ_RESIZE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %24 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 26
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @IPATH_SRC_OUI_1, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* @IPATH_SRC_OUI_2, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %29, %31
  %33 = load i32, i32* @IPATH_SRC_OUI_3, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %36 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %38 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %43 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %42, i32 0, i32 25
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %45 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %50 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %49, i32 0, i32 24
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %52 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %55 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %54, i32 0, i32 23
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %57 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %56, i32 0, i32 2
  store i64 -1, i64* %57, align 8
  %58 = load i32, i32* @ib_ipath_max_qps, align 4
  %59 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %60 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %59, i32 0, i32 22
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ib_ipath_max_qp_wrs, align 4
  %62 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %63 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %62, i32 0, i32 21
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ib_ipath_max_sges, align 4
  %65 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %66 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %65, i32 0, i32 20
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @ib_ipath_max_cqs, align 4
  %68 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %69 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %68, i32 0, i32 19
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @ib_ipath_max_ahs, align 4
  %71 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %72 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %71, i32 0, i32 18
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ib_ipath_max_cqes, align 4
  %74 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %74, i32 0, i32 17
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %77 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %81 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %80, i32 0, i32 16
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %83 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %87 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %86, i32 0, i32 15
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %89 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %88, i32 0, i32 3
  store i32 32767, i32* %89, align 8
  %90 = load i32, i32* @ib_ipath_max_pds, align 4
  %91 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %92 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %91, i32 0, i32 14
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @IPATH_MAX_RDMA_ATOMIC, align 4
  %94 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %95 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %94, i32 0, i32 13
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %97 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %96, i32 0, i32 4
  store i32 255, i32* %97, align 4
  %98 = load i32, i32* @ib_ipath_max_srqs, align 4
  %99 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %100 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %99, i32 0, i32 12
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @ib_ipath_max_srq_wrs, align 4
  %102 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %103 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @ib_ipath_max_srq_sges, align 4
  %105 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %106 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @IB_ATOMIC_GLOB, align 4
  %108 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %109 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %5, align 8
  %111 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @ipath_get_npkeys(%struct.TYPE_4__* %112)
  %114 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %115 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @ib_ipath_max_mcast_grps, align 4
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @ib_ipath_max_mcast_qp_attached, align 4
  %120 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %121 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %123 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %126 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %130 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 8
  ret i32 0
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @ipath_get_npkeys(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
