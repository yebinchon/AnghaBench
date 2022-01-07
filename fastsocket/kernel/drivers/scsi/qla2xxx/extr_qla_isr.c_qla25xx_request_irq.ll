; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_init_msix_entry = type { i32, i32 }
%struct.rsp_que = type { %struct.qla_msix_entry*, %struct.qla_hw_data* }
%struct.qla_msix_entry = type { i32, %struct.rsp_que*, i32 }
%struct.qla_hw_data = type { i32 }

@msix_entries = common dso_local global %struct.qla_init_msix_entry* null, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MSI-X: Unable to register handler -- %x/%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla25xx_request_irq(%struct.rsp_que* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsp_que*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.qla_init_msix_entry*, align 8
  %6 = alloca %struct.qla_msix_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rsp_que* %0, %struct.rsp_que** %3, align 8
  %9 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %10 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %9, i32 0, i32 1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %4, align 8
  %12 = load %struct.qla_init_msix_entry*, %struct.qla_init_msix_entry** @msix_entries, align 8
  %13 = getelementptr inbounds %struct.qla_init_msix_entry, %struct.qla_init_msix_entry* %12, i64 2
  store %struct.qla_init_msix_entry* %13, %struct.qla_init_msix_entry** %5, align 8
  %14 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %15 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %14, i32 0, i32 0
  %16 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %15, align 8
  store %struct.qla_msix_entry* %16, %struct.qla_msix_entry** %6, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @pci_get_drvdata(i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %6, align 8
  %22 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.qla_init_msix_entry*, %struct.qla_init_msix_entry** %5, align 8
  %25 = getelementptr inbounds %struct.qla_init_msix_entry, %struct.qla_init_msix_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qla_init_msix_entry*, %struct.qla_init_msix_entry** %5, align 8
  %28 = getelementptr inbounds %struct.qla_init_msix_entry, %struct.qla_init_msix_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %31 = call i32 @request_irq(i32 %23, i32 %26, i32 0, i32 %29, %struct.rsp_que* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load i32, i32* @ql_log_fatal, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %6, align 8
  %38 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ql_log(i32 %35, i32* %36, i32 230, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %6, align 8
  %45 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %47 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %6, align 8
  %48 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %47, i32 0, i32 1
  store %struct.rsp_que* %46, %struct.rsp_que** %48, align 8
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %34
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rsp_que*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
