; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soft_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.qla_hw_data*)*, i32 (%struct.qla_hw_data*)* }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlafx00_soft_reset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @pci_channel_offline(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %41

24:                                               ; preds = %18
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32 (%struct.qla_hw_data*)*, i32 (%struct.qla_hw_data*)** %28, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %31 = call i32 %29(%struct.qla_hw_data* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @qlafx00_soc_cpu_reset(%struct.TYPE_8__* %32)
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (%struct.qla_hw_data*)*, i32 (%struct.qla_hw_data*)** %37, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = call i32 %38(%struct.qla_hw_data* %39)
  br label %41

41:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @qlafx00_soc_cpu_reset(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
