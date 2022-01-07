; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portsamplescontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portsamplescontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplescontrol = type { i32, i32, i32, i32*, i32, i8*, i8*, i32, i32 }
%struct.ipath_ibdev = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.ipath_cregs* }
%struct.ipath_cregs = type { i64 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@COUNTER_MASK0_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @recv_pma_get_portsamplescontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_get_portsamplescontrol(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portsamplescontrol*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca %struct.ipath_cregs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %13 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ib_pma_portsamplescontrol*
  store %struct.ib_pma_portsamplescontrol* %15, %struct.ib_pma_portsamplescontrol** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %16)
  store %struct.ipath_ibdev* %17, %struct.ipath_ibdev** %8, align 8
  %18 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %19 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %18, i32 0, i32 6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.ipath_cregs*, %struct.ipath_cregs** %21, align 8
  store %struct.ipath_cregs* %22, %struct.ipath_cregs** %9, align 8
  %23 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %24 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %27 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memset(i64 %28, i32 0, i32 8)
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %32 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %34 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 255
  br i1 %44, label %45, label %52

45:                                               ; preds = %42, %3
  %46 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %48 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %42, %38
  %53 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %54 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %59 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %58, i32 0, i32 6
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %65 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %52
  %67 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %68 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %67, i32 0, i32 1
  store i32 250, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %71 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %70, i32 0, i32 2
  store i32 4, i32* %71, align 8
  %72 = load i32, i32* @COUNTER_MASK0_9, align 4
  %73 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %74 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %76 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %80 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %69
  %84 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %85 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %84, i32 0, i32 6
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.ipath_cregs*, %struct.ipath_cregs** %9, align 8
  %88 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ipath_read_creg32(%struct.TYPE_4__* %86, i64 %89)
  %91 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %92 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  br label %99

93:                                               ; preds = %69
  %94 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %95 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %98 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %83
  %100 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %101 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @cpu_to_be32(i32 %102)
  %104 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %105 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %107 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @cpu_to_be32(i32 %108)
  %110 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %111 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %113 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @cpu_to_be16(i32 %114)
  %116 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %117 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %119 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %124 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %128 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %133 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %131, i32* %135, align 4
  %136 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %137 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %142 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32 %140, i32* %144, align 4
  %145 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %146 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %151 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  store i32 %149, i32* %153, align 4
  %154 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %155 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %160 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  store i32 %158, i32* %162, align 4
  %163 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %164 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %163, i32 0, i32 0
  %165 = load i64, i64* %10, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  %167 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %168 = bitcast %struct.ib_pma_mad* %167 to %struct.ib_smp*
  %169 = call i32 @reply(%struct.ib_smp* %168)
  ret i32 %169
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_read_creg32(%struct.TYPE_4__*, i64) #1

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
