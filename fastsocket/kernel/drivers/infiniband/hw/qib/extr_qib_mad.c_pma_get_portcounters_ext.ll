; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters_ext = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qib_ibport = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.qib_pportdata = type { i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %17 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %19, %struct.ib_pma_portcounters_ext** %7, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %20, i64 %21)
  store %struct.qib_ibport* %22, %struct.qib_ibport** %8, align 8
  %23 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %24 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %23)
  store %struct.qib_pportdata* %24, %struct.qib_pportdata** %9, align 8
  %25 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %26 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %15, align 8
  %28 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %29 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memset(i64 %30, i32 0, i32 8)
  %32 = load i64, i64* %15, align 8
  %33 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %34 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %36 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %3
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %3
  %45 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %46 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %47 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 8
  br label %122

51:                                               ; preds = %40
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %53 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %52, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %54 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %55 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %62 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %69 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %76 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i8* @cpu_to_be64(i32 %82)
  %84 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %85 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %84, i32 0, i32 8
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i8* @cpu_to_be64(i32 %86)
  %88 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %89 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i8* @cpu_to_be64(i32 %90)
  %92 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %93 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i8* @cpu_to_be64(i32 %94)
  %96 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %97 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %99 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_be64(i32 %100)
  %102 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %103 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %105 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @cpu_to_be64(i32 %106)
  %108 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %109 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %111 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_be64(i32 %112)
  %114 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %115 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %117 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @cpu_to_be64(i32 %118)
  %120 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %121 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %51, %44
  %123 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %124 = bitcast %struct.ib_pma_mad* %123 to %struct.ib_smp*
  %125 = call i32 @reply(%struct.ib_smp* %124)
  ret i32 %125
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
