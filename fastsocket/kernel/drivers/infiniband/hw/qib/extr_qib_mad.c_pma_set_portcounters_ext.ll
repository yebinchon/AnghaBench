; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i32 }
%struct.qib_ibport = type { i64, i64, i64, i64, i8*, i8*, i8*, i8* }
%struct.qib_pportdata = type { i32 }

@IB_PMA_SELX_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_RCV_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_UNI_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_UNI_RCV_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_MULTI_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SELX_PORT_MULTI_RCV_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @pma_set_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %16 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %18, %struct.ib_pma_portcounters** %7, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %19, i32 %20)
  store %struct.qib_ibport* %21, %struct.qib_ibport** %8, align 8
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %23 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %22)
  store %struct.qib_pportdata* %23, %struct.qib_pportdata** %9, align 8
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %25 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %24, i8** %10, i8** %11, i8** %12, i8** %13, i8** %14)
  %26 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %27 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IB_PMA_SELX_PORT_XMIT_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %35 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %38 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IB_PMA_SELX_PORT_RCV_DATA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %46 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %49 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IB_PMA_SELX_PORT_XMIT_PACKETS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %57 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %60 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IB_PMA_SELX_PORT_RCV_PACKETS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %68 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %71 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IB_PMA_SELX_PORT_UNI_XMIT_PACKETS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %78 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %81 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IB_PMA_SELX_PORT_UNI_RCV_PACKETS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %88 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %91 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IB_PMA_SELX_PORT_MULTI_XMIT_PACKETS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %98 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %101 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IB_PMA_SELX_PORT_MULTI_RCV_PACKETS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %108 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %111 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @pma_get_portcounters_ext(%struct.ib_pma_mad* %110, %struct.ib_device* %111, i32 %112)
  ret i32 %113
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @pma_get_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
