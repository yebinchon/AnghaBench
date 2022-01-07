; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portcounters_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portcounters_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters_ext = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ipath_ibdev = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @recv_pma_get_portcounters_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_get_portcounters_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %16 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %18, %struct.ib_pma_portcounters_ext** %7, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %19)
  store %struct.ipath_ibdev* %20, %struct.ipath_ibdev** %8, align 8
  %21 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %22 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %25 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ipath_snapshot_counters(i32 %26, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  %28 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %29 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %36 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %43 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %50 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %57 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memset(i64 %58, i32 0, i32 8)
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %62 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %64 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %3
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 255
  br i1 %74, label %75, label %82

75:                                               ; preds = %72, %3
  %76 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %77 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %78 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %75, %72, %68
  %83 = load i32, i32* %9, align 4
  %84 = call i8* @cpu_to_be64(i32 %83)
  %85 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %86 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @cpu_to_be64(i32 %87)
  %89 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %90 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @cpu_to_be64(i32 %91)
  %93 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %94 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i8* @cpu_to_be64(i32 %95)
  %97 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %98 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %100 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_be64(i32 %101)
  %103 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %104 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %106 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @cpu_to_be64(i32 %107)
  %109 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %110 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %112 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_be64(i32 %113)
  %115 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %116 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %118 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @cpu_to_be64(i32 %119)
  %121 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %7, align 8
  %122 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %124 = bitcast %struct.ib_pma_mad* %123 to %struct.ib_smp*
  %125 = call i32 @reply(%struct.ib_smp* %124)
  ret i32 %125
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_snapshot_counters(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
