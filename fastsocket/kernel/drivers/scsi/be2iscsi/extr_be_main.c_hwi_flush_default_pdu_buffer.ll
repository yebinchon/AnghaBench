; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_flush_default_pdu_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_flush_default_pdu_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.hwi_controller* }
%struct.hwi_controller = type { i32 }
%struct.beiscsi_conn = type { i32 }
%struct.i_t_dpdu_cqe = type { i32 }
%struct.hwi_async_pdu_context = type { i32 }
%struct.async_pdu_handle = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, %struct.beiscsi_conn*, %struct.i_t_dpdu_cqe*)* @hwi_flush_default_pdu_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_flush_default_pdu_buffer(%struct.beiscsi_hba* %0, %struct.beiscsi_conn* %1, %struct.i_t_dpdu_cqe* %2) #0 {
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.beiscsi_conn*, align 8
  %6 = alloca %struct.i_t_dpdu_cqe*, align 8
  %7 = alloca %struct.hwi_controller*, align 8
  %8 = alloca %struct.hwi_async_pdu_context*, align 8
  %9 = alloca %struct.async_pdu_handle*, align 8
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.beiscsi_conn* %1, %struct.beiscsi_conn** %5, align 8
  store %struct.i_t_dpdu_cqe* %2, %struct.i_t_dpdu_cqe** %6, align 8
  store %struct.async_pdu_handle* null, %struct.async_pdu_handle** %9, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 0
  %13 = load %struct.hwi_controller*, %struct.hwi_controller** %12, align 8
  store %struct.hwi_controller* %13, %struct.hwi_controller** %7, align 8
  %14 = load %struct.hwi_controller*, %struct.hwi_controller** %7, align 8
  %15 = call %struct.hwi_async_pdu_context* @HWI_GET_ASYNC_PDU_CTX(%struct.hwi_controller* %14)
  store %struct.hwi_async_pdu_context* %15, %struct.hwi_async_pdu_context** %8, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %17 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %18 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %8, align 8
  %19 = load %struct.i_t_dpdu_cqe*, %struct.i_t_dpdu_cqe** %6, align 8
  %20 = call %struct.async_pdu_handle* @hwi_get_async_handle(%struct.beiscsi_hba* %16, %struct.beiscsi_conn* %17, %struct.hwi_async_pdu_context* %18, %struct.i_t_dpdu_cqe* %19, i32* %10)
  store %struct.async_pdu_handle* %20, %struct.async_pdu_handle** %9, align 8
  %21 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %9, align 8
  %22 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %9, align 8
  %28 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %33 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %8, align 8
  %34 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %9, align 8
  %35 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @hwi_update_async_writables(%struct.beiscsi_hba* %32, %struct.hwi_async_pdu_context* %33, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %41 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %9, align 8
  %42 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hwi_free_async_msg(%struct.beiscsi_hba* %40, i32 %43)
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %46 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %9, align 8
  %47 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @hwi_post_async_buffers(%struct.beiscsi_hba* %45, i64 %48)
  ret void
}

declare dso_local %struct.hwi_async_pdu_context* @HWI_GET_ASYNC_PDU_CTX(%struct.hwi_controller*) #1

declare dso_local %struct.async_pdu_handle* @hwi_get_async_handle(%struct.beiscsi_hba*, %struct.beiscsi_conn*, %struct.hwi_async_pdu_context*, %struct.i_t_dpdu_cqe*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hwi_update_async_writables(%struct.beiscsi_hba*, %struct.hwi_async_pdu_context*, i64, i32) #1

declare dso_local i32 @hwi_free_async_msg(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @hwi_post_async_buffers(%struct.beiscsi_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
