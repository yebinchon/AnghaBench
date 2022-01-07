; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portsamplescontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portsamplescontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplescontrol = type { i64, i32*, i32, i32, i32 }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i8*, i8*)* }
%struct.qib_pportdata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qib_ibport = type { i32, i8*, i8*, i32*, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PMA_CONG_HW_CONTROL_SAMPLE = common dso_local global i64 0, align 8
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_RUNNING = common dso_local global i64 0, align 8
@IB_PMA_CONG_HW_CONTROL_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_set_portsamplescontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portsamplescontrol(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
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
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %17 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_pma_portsamplescontrol*
  store %struct.ib_pma_portsamplescontrol* %19, %struct.ib_pma_portsamplescontrol** %7, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %20)
  store %struct.qib_ibdev* %21, %struct.qib_ibdev** %8, align 8
  %22 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %23 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %22)
  store %struct.qib_devdata* %23, %struct.qib_devdata** %9, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %24, i64 %25)
  store %struct.qib_ibport* %26, %struct.qib_ibport** %10, align 8
  %27 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %28 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %27)
  store %struct.qib_pportdata* %28, %struct.qib_pportdata** %11, align 8
  %29 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %30 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %3
  %35 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %36 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34, %3
  %41 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %42 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %43 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %48 = bitcast %struct.ib_pma_mad* %47 to %struct.ib_smp*
  %49 = call i32 @reply(%struct.ib_smp* %48)
  store i32 %49, i32* %15, align 4
  br label %164

50:                                               ; preds = %34
  %51 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %52 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %51, i32 0, i32 0
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %56 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_SAMPLE, align 8
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %61 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 0
  %65 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %64, align 8
  %66 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %67 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %68 = call i64 %65(%struct.qib_pportdata* %66, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %50
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @IB_PMA_SAMPLE_STATUS_RUNNING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %155

76:                                               ; preds = %72
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %155

80:                                               ; preds = %76, %50
  %81 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %82 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @be32_to_cpu(i32 %83)
  %85 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %86 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %88 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @be32_to_cpu(i32 %89)
  %91 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %92 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %94 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @be16_to_cpu(i32 %95)
  %97 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %98 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %100 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %105 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %109 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %114 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %118 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %121, i32* %125, align 4
  %126 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %127 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %132 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 %130, i32* %134, align 4
  %135 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %136 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %141 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32 %139, i32* %143, align 4
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %145 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %144, i32 0, i32 1
  %146 = load i32 (%struct.qib_pportdata*, i8*, i8*)*, i32 (%struct.qib_pportdata*, i8*, i8*)** %145, align 8
  %147 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %148 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %149 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %152 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 %146(%struct.qib_pportdata* %147, i8* %150, i8* %153)
  br label %155

155:                                              ; preds = %80, %76, %72
  %156 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %157 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %156, i32 0, i32 0
  %158 = load i64, i64* %12, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %161 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad* %160, %struct.ib_device* %161, i64 %162)
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %155, %40
  %165 = load i32, i32* %15, align 4
  ret i32 %165
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
