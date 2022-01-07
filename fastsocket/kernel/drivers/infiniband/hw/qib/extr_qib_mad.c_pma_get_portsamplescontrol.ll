; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplescontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplescontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplescontrol = type { i64, i32, i32*, i32, i8*, i8*, i32, i32, i32 }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)* }
%struct.qib_pportdata = type { i32 }
%struct.qib_ibport = type { i32, i32*, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@QIB_IB_CFG_PMA_TICKS = common dso_local global i32 0, align 4
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@COUNTER_MASK0_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portsamplescontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplescontrol*, align 8
  %8 = alloca %struct.qib_ibdev*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca %struct.qib_pportdata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %15 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ib_pma_portsamplescontrol*
  store %struct.ib_pma_portsamplescontrol* %17, %struct.ib_pma_portsamplescontrol** %7, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %18)
  store %struct.qib_ibdev* %19, %struct.qib_ibdev** %8, align 8
  %20 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %21 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %20)
  store %struct.qib_devdata* %21, %struct.qib_devdata** %9, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %22, i64 %23)
  store %struct.qib_ibport* %24, %struct.qib_ibport** %10, align 8
  %25 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %26 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %25)
  store %struct.qib_pportdata* %26, %struct.qib_pportdata** %11, align 8
  %27 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %28 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %31 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memset(i64 %32, i32 0, i32 8)
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %36 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %38 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %3
  %47 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %48 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %49 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %146

53:                                               ; preds = %42
  %54 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %55 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %54, i32 0, i32 0
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 1
  %60 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %59, align 8
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %62 = load i32, i32* @QIB_IB_CFG_PMA_TICKS, align 4
  %63 = call i32 %60(%struct.qib_pportdata* %61, i32 %62)
  %64 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %65 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 0
  %68 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %67, align 8
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %70 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %71 = call i32 %68(%struct.qib_pportdata* %69, i32 %70)
  %72 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %73 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %75 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %74, i32 0, i32 1
  store i32 4, i32* %75, align 8
  %76 = load i32, i32* @COUNTER_MASK0_9, align 4
  %77 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %78 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %80 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %84 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %86 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %90 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %92 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @cpu_to_be16(i32 %93)
  %95 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %96 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %98 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %103 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %112 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %110, i32* %114, align 4
  %115 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %116 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %121 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32 %119, i32* %123, align 4
  %124 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %125 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %130 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 %128, i32* %132, align 4
  %133 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %134 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %139 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32 %137, i32* %141, align 4
  %142 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %143 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %142, i32 0, i32 0
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  br label %146

146:                                              ; preds = %53, %46
  %147 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %148 = bitcast %struct.ib_pma_mad* %147 to %struct.ib_smp*
  %149 = call i32 @reply(%struct.ib_smp* %148)
  ret i32 %149
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
