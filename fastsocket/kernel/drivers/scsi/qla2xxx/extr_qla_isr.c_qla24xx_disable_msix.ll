; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_disable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_disable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, %struct.TYPE_2__, %struct.qla_msix_entry*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.qla_msix_entry = type { i32, i32, i64 }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Disabled the MSI.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla24xx_disable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_disable_msix(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_msix_entry*, align 8
  %5 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32* @pci_get_drvdata(i32 %8)
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 2
  %19 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %19, i64 %21
  store %struct.qla_msix_entry* %22, %struct.qla_msix_entry** %4, align 8
  %23 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %4, align 8
  %24 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %4, align 8
  %29 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %4, align 8
  %32 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @free_irq(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %27, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pci_disable_msix(i32 %42)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 2
  %46 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %45, align 8
  %47 = call i32 @kfree(%struct.qla_msix_entry* %46)
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 2
  store %struct.qla_msix_entry* null, %struct.qla_msix_entry** %49, align 8
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @ql_dbg_init, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ql_dbg(i32 %53, i32* %54, i32 66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @pci_disable_msix(i32) #1

declare dso_local i32 @kfree(%struct.qla_msix_entry*) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
