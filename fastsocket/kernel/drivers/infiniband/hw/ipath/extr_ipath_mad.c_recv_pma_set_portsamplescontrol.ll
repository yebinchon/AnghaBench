; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_set_portsamplescontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_set_portsamplescontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplescontrol = type { i64, i32*, i32, i32, i32 }
%struct.ipath_ibdev = type { i64, i32, i8*, %struct.TYPE_5__*, i8*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.ipath_cregs* }
%struct.ipath_cregs = type { i32, i32, i64 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @recv_pma_set_portsamplescontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_set_portsamplescontrol(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplescontrol*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca %struct.ipath_cregs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ib_pma_portsamplescontrol*
  store %struct.ib_pma_portsamplescontrol* %16, %struct.ib_pma_portsamplescontrol** %7, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %17)
  store %struct.ipath_ibdev* %18, %struct.ipath_ibdev** %8, align 8
  %19 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %20 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.ipath_cregs*, %struct.ipath_cregs** %22, align 8
  store %struct.ipath_cregs* %23, %struct.ipath_cregs** %9, align 8
  %24 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %25 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %3
  %30 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %31 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %37 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 255
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %3
  %41 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %42 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %43 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %48 = bitcast %struct.ib_pma_mad* %47 to %struct.ib_smp*
  %49 = call i32 @reply(%struct.ib_smp* %48)
  store i32 %49, i32* %12, align 4
  br label %178

50:                                               ; preds = %35, %29
  %51 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %52 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %51, i32 0, i32 1
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %56 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %61 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %64 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @ipath_read_creg32(%struct.TYPE_5__* %62, i64 %65)
  store i64 %66, i64* %11, align 8
  br label %71

67:                                               ; preds = %50
  %68 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %69 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %169

75:                                               ; preds = %71
  %76 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %77 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @be32_to_cpu(i32 %78)
  %80 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %81 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %83 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @be32_to_cpu(i32 %84)
  %86 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %87 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %89 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @be16_to_cpu(i32 %90)
  %92 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %93 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %95 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %100 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %104 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %109 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %107, i32* %111, align 4
  %112 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %113 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %118 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 %116, i32* %120, align 4
  %121 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %122 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %127 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 %125, i32* %129, align 4
  %130 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %131 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %136 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  store i32 %134, i32* %138, align 4
  %139 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %140 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %75
  %144 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %145 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %148 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %151 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @ipath_write_creg(%struct.TYPE_5__* %146, i32 %149, i8* %152)
  %154 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %155 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %158 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %161 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @ipath_write_creg(%struct.TYPE_5__* %156, i32 %159, i8* %162)
  br label %168

164:                                              ; preds = %75
  %165 = load i64, i64* @IB_PMA_SAMPLE_STATUS_STARTED, align 8
  %166 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %167 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %164, %143
  br label %169

169:                                              ; preds = %168, %71
  %170 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %171 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %170, i32 0, i32 1
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %175 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @recv_pma_get_portsamplescontrol(%struct.ib_pma_mad* %174, %struct.ib_device* %175, i64 %176)
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %169, %40
  %179 = load i32, i32* %12, align 4
  ret i32 %179
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ipath_read_creg32(%struct.TYPE_5__*, i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ipath_write_creg(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @recv_pma_get_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
