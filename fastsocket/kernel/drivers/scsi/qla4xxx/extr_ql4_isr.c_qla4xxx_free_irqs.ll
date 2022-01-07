; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_free_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_IRQ_ATTACHED = common dso_local global i32 0, align 4
@AF_MSIX_ENABLED = common dso_local global i32 0, align 4
@AF_MSI_ENABLED = common dso_local global i32 0, align 4
@AF_INTx_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4xxx_free_irqs(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load i32, i32* @AF_IRQ_ATTACHED, align 4
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %4, i32 0, i32 1
  %6 = call i64 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = load i32, i32* @AF_MSIX_ENABLED, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %16 = call i32 @qla4_8xxx_disable_msix(%struct.scsi_qla_host* %15)
  br label %51

17:                                               ; preds = %8
  %18 = load i32, i32* @AF_MSI_ENABLED, align 4
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = call i64 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.scsi_qla_host* %29)
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @pci_disable_msi(%struct.TYPE_2__* %33)
  br label %50

35:                                               ; preds = %17
  %36 = load i32, i32* @AF_INTx_ENABLED, align 4
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 1
  %39 = call i64 @test_and_clear_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %43 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.scsi_qla_host* %47)
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %14
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qla4_8xxx_disable_msix(%struct.scsi_qla_host*) #1

declare dso_local i32 @free_irq(i32, %struct.scsi_qla_host*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
