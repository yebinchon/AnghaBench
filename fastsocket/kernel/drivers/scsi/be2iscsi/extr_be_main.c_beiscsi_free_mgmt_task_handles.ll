; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_mgmt_task_handles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_free_mgmt_task_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { i32, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { i32, i32, %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.iscsi_task = type { %struct.beiscsi_io_task* }
%struct.beiscsi_io_task = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.beiscsi_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.beiscsi_io_task*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.hwi_wrb_context*, align 8
  %8 = alloca %struct.hwi_controller*, align 8
  %9 = alloca i64, align 8
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %10 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %10, i32 0, i32 1
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  store %struct.beiscsi_hba* %12, %struct.beiscsi_hba** %6, align 8
  %13 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @BE_GET_CRI_FROM_CID(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 2
  %19 = load %struct.hwi_controller*, %struct.hwi_controller** %18, align 8
  store %struct.hwi_controller* %19, %struct.hwi_controller** %8, align 8
  %20 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %21 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %20, i32 0, i32 0
  %22 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %22, i64 %23
  store %struct.hwi_wrb_context* %24, %struct.hwi_wrb_context** %7, align 8
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %25, i32 0, i32 0
  %27 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %26, align 8
  store %struct.beiscsi_io_task* %27, %struct.beiscsi_io_task** %5, align 8
  %28 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %29 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %34 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32 %37, i32 0, i32 4)
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %40 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %7, align 8
  %41 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %42 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @free_wrb_handle(%struct.beiscsi_hba* %39, %struct.hwi_wrb_context* %40, %struct.TYPE_2__* %43)
  %45 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %46 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %45, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %46, align 8
  br label %47

47:                                               ; preds = %32, %2
  %48 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %49 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %54 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %57 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %58 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @free_mgmt_sgl_handle(%struct.beiscsi_hba* %56, i32* %59)
  %61 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %62 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %64 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_bh(i32* %64)
  br label %66

66:                                               ; preds = %52, %47
  %67 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %68 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %73 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %76 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %79 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %82 = call i32 @pci_unmap_single(i32 %74, i64 %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %66
  ret void
}

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @free_wrb_handle(%struct.beiscsi_hba*, %struct.hwi_wrb_context*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @free_mgmt_sgl_handle(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
