; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_free_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_7__*, %struct.TYPE_5__, %struct.rsp_que** }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.rsp_que = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_free_irqs(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %3, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 2
  %10 = load %struct.rsp_que**, %struct.rsp_que*** %9, align 8
  %11 = icmp ne %struct.rsp_que** %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 2
  %15 = load %struct.rsp_que**, %struct.rsp_que*** %14, align 8
  %16 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %15, i64 0
  %17 = load %struct.rsp_que*, %struct.rsp_que** %16, align 8
  %18 = icmp ne %struct.rsp_que* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %61

20:                                               ; preds = %12
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 2
  %23 = load %struct.rsp_que**, %struct.rsp_que*** %22, align 8
  %24 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %23, i64 0
  %25 = load %struct.rsp_que*, %struct.rsp_que** %24, align 8
  store %struct.rsp_que* %25, %struct.rsp_que** %4, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %33 = call i32 @qla24xx_disable_msix(%struct.qla_hw_data* %32)
  br label %61

34:                                               ; preds = %20
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %47 = call i32 @free_irq(i32 %45, %struct.rsp_que* %46)
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @pci_disable_msi(%struct.TYPE_7__* %50)
  br label %60

52:                                               ; preds = %34
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.rsp_que* %58)
  br label %60

60:                                               ; preds = %52, %40
  br label %61

61:                                               ; preds = %19, %60, %31
  ret void
}

declare dso_local i32 @qla24xx_disable_msix(%struct.qla_hw_data*) #1

declare dso_local i32 @free_irq(i32, %struct.rsp_que*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
