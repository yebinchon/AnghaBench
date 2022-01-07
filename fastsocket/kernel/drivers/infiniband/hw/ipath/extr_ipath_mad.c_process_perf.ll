; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_process_perf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_process_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_pma_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_perf(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca %struct.ib_mad*, align 8
  %9 = alloca %struct.ib_pma_mad*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %8, align 8
  %11 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %12 = bitcast %struct.ib_mad* %11 to %struct.ib_pma_mad*
  store %struct.ib_pma_mad* %12, %struct.ib_pma_mad** %9, align 8
  %13 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %15 = bitcast %struct.ib_mad* %13 to i8*
  %16 = bitcast %struct.ib_mad* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %18 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %24 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %25 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %30 = bitcast %struct.ib_pma_mad* %29 to %struct.ib_smp*
  %31 = call i32 @reply(%struct.ib_smp* %30)
  store i32 %31, i32* %10, align 4
  br label %121

32:                                               ; preds = %4
  %33 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %34 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %110 [
    i32 136, label %37
    i32 134, label %78
    i32 135, label %108
  ]

37:                                               ; preds = %32
  %38 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %39 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %68 [
    i32 133, label %42
    i32 130, label %45
    i32 129, label %50
    i32 128, label %54
    i32 132, label %58
    i32 131, label %63
  ]

42:                                               ; preds = %37
  %43 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %44 = call i32 @recv_pma_get_classportinfo(%struct.ib_pma_mad* %43)
  store i32 %44, i32* %10, align 4
  br label %121

45:                                               ; preds = %37
  %46 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %47 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @recv_pma_get_portsamplescontrol(%struct.ib_pma_mad* %46, %struct.ib_device* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %121

50:                                               ; preds = %37
  %51 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %52 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %53 = call i32 @recv_pma_get_portsamplesresult(%struct.ib_pma_mad* %51, %struct.ib_device* %52)
  store i32 %53, i32* %10, align 4
  br label %121

54:                                               ; preds = %37
  %55 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %56 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %57 = call i32 @recv_pma_get_portsamplesresult_ext(%struct.ib_pma_mad* %55, %struct.ib_device* %56)
  store i32 %57, i32* %10, align 4
  br label %121

58:                                               ; preds = %37
  %59 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @recv_pma_get_portcounters(%struct.ib_pma_mad* %59, %struct.ib_device* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %121

63:                                               ; preds = %37
  %64 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @recv_pma_get_portcounters_ext(%struct.ib_pma_mad* %64, %struct.ib_device* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  br label %121

68:                                               ; preds = %37
  %69 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %70 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %71 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %76 = bitcast %struct.ib_pma_mad* %75 to %struct.ib_smp*
  %77 = call i32 @reply(%struct.ib_smp* %76)
  store i32 %77, i32* %10, align 4
  br label %121

78:                                               ; preds = %32
  %79 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %80 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %98 [
    i32 130, label %83
    i32 132, label %88
    i32 131, label %93
  ]

83:                                               ; preds = %78
  %84 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %85 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @recv_pma_set_portsamplescontrol(%struct.ib_pma_mad* %84, %struct.ib_device* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %121

88:                                               ; preds = %78
  %89 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %90 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @recv_pma_set_portcounters(%struct.ib_pma_mad* %89, %struct.ib_device* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  br label %121

93:                                               ; preds = %78
  %94 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %95 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @recv_pma_set_portcounters_ext(%struct.ib_pma_mad* %94, %struct.ib_device* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %121

98:                                               ; preds = %78
  %99 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %100 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %101 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %106 = bitcast %struct.ib_pma_mad* %105 to %struct.ib_smp*
  %107 = call i32 @reply(%struct.ib_smp* %106)
  store i32 %107, i32* %10, align 4
  br label %121

108:                                              ; preds = %32
  %109 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %109, i32* %10, align 4
  br label %121

110:                                              ; preds = %32
  %111 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %112 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %113 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %118 = bitcast %struct.ib_pma_mad* %117 to %struct.ib_smp*
  %119 = call i32 @reply(%struct.ib_smp* %118)
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %108, %98, %93, %88, %83, %68, %63, %58, %54, %50, %45, %42, %22
  %122 = load i32, i32* %10, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reply(%struct.ib_smp*) #2

declare dso_local i32 @recv_pma_get_classportinfo(%struct.ib_pma_mad*) #2

declare dso_local i32 @recv_pma_get_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @recv_pma_get_portsamplesresult(%struct.ib_pma_mad*, %struct.ib_device*) #2

declare dso_local i32 @recv_pma_get_portsamplesresult_ext(%struct.ib_pma_mad*, %struct.ib_device*) #2

declare dso_local i32 @recv_pma_get_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @recv_pma_get_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @recv_pma_set_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @recv_pma_set_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @recv_pma_set_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
