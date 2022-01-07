; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_set_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_set_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i32 }
%struct.ipath_ibdev = type { i64, i64, i64, i64, i8*, i8*, i8*, i8*, i32 }

@IB_PMA_SELX_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_RCV_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_UNI_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_UNI_RCV_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_MULTI_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_MULTI_RCV_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @recv_pma_set_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_set_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %15 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %17, %struct.ib_pma_portcounters** %7, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %18)
  store %struct.ipath_ibdev* %19, %struct.ipath_ibdev** %8, align 8
  %20 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %21 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ipath_snapshot_counters(i32 %22, i8** %9, i8** %10, i8** %11, i8** %12, i8** %13)
  %24 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %25 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IB_PMA_SELX_PORT_XMIT_DATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %33 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %36 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IB_PMA_SELX_PORT_RCV_DATA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %44 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %47 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_PMA_SELX_PORT_XMIT_PACKETS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %55 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %58 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IB_PMA_SELX_PORT_RCV_PACKETS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %66 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %69 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IB_PMA_SELX_PORT_UNI_XMIT_PACKETS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %76 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %79 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IB_PMA_SELX_PORT_UNI_RCV_PACKETS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %86 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %89 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IB_PMA_SELX_PORT_MULTI_XMIT_PACKETS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %96 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %99 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IB_PMA_SELX_PORT_MULTI_RCV_PACKETS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %106 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %109 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @recv_pma_get_portcounters_ext(%struct.ib_pma_mad* %108, %struct.ib_device* %109, i32 %110)
  ret i32 %111
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_snapshot_counters(i32, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @recv_pma_get_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
