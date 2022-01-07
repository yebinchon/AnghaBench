; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, %struct.iscsi_conn*, %struct.beiscsi_io_task* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i32, i32, %struct.beiscsi_session*, %struct.beiscsi_hba* }
%struct.beiscsi_session = type { i32 }
%struct.beiscsi_hba = type { i32, %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.beiscsi_io_task = type { i32*, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @beiscsi_cleanup_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.beiscsi_io_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_conn*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.beiscsi_session*, align 8
  %8 = alloca %struct.hwi_wrb_context*, align 8
  %9 = alloca %struct.hwi_controller*, align 8
  %10 = alloca i64, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 2
  %13 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %12, align 8
  store %struct.beiscsi_io_task* %13, %struct.beiscsi_io_task** %3, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 1
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %4, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %18, align 8
  store %struct.beiscsi_conn* %19, %struct.beiscsi_conn** %5, align 8
  %20 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %21 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %20, i32 0, i32 3
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %21, align 8
  store %struct.beiscsi_hba* %22, %struct.beiscsi_hba** %6, align 8
  %23 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %24 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %23, i32 0, i32 2
  %25 = load %struct.beiscsi_session*, %struct.beiscsi_session** %24, align 8
  store %struct.beiscsi_session* %25, %struct.beiscsi_session** %7, align 8
  %26 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %27 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @BE_GET_CRI_FROM_CID(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 1
  %32 = load %struct.hwi_controller*, %struct.hwi_controller** %31, align 8
  store %struct.hwi_controller* %32, %struct.hwi_controller** %9, align 8
  %33 = load %struct.hwi_controller*, %struct.hwi_controller** %9, align 8
  %34 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %33, i32 0, i32 0
  %35 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %35, i64 %36
  store %struct.hwi_wrb_context* %37, %struct.hwi_wrb_context** %8, align 8
  %38 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %39 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %1
  %43 = load %struct.beiscsi_session*, %struct.beiscsi_session** %7, align 8
  %44 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %47 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %50 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pci_pool_free(i32 %45, i32* %48, i32 %54)
  %56 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %57 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %42, %1
  %59 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %60 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %65 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %70 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %8, align 8
  %71 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %72 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @free_wrb_handle(%struct.beiscsi_hba* %69, %struct.hwi_wrb_context* %70, i32* %73)
  %75 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %76 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %68, %63
  %78 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %79 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %84 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %87 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %88 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @free_io_sgl_handle(%struct.beiscsi_hba* %86, i32* %89)
  %91 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %92 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %95 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %82, %77
  br label %107

97:                                               ; preds = %58
  %98 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %99 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %104 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %105 = call i32 @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn* %103, %struct.iscsi_task* %104)
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %96
  ret void
}

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @pci_pool_free(i32, i32*, i32) #1

declare dso_local i32 @free_wrb_handle(%struct.beiscsi_hba*, %struct.hwi_wrb_context*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_io_sgl_handle(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn*, %struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
