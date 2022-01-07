; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_offload_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_offload_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { i32, i64, %struct.iscsi_task*, %struct.beiscsi_hba* }
%struct.iscsi_task = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.beiscsi_hba = type { i64, i32 }
%struct.beiscsi_offload_params = type { i32 }
%struct.wrb_handle = type { i32, i32 }

@DB_WRB_POST_CID_MASK = common dso_local global i32 0, align 4
@DB_DEF_PDU_WRB_INDEX_MASK = common dso_local global i32 0, align 4
@DB_DEF_PDU_WRB_INDEX_SHIFT = common dso_local global i32 0, align 4
@DB_DEF_PDU_NUM_POSTED_SHIFT = common dso_local global i32 0, align 4
@DB_TXULP0_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_offload_connection(%struct.beiscsi_conn* %0, %struct.beiscsi_offload_params* %1) #0 {
  %3 = alloca %struct.beiscsi_conn*, align 8
  %4 = alloca %struct.beiscsi_offload_params*, align 8
  %5 = alloca %struct.wrb_handle*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %3, align 8
  store %struct.beiscsi_offload_params* %1, %struct.beiscsi_offload_params** %4, align 8
  %10 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %10, i32 0, i32 3
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  store %struct.beiscsi_hba* %12, %struct.beiscsi_hba** %6, align 8
  %13 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %13, i32 0, i32 2
  %15 = load %struct.iscsi_task*, %struct.iscsi_task** %14, align 8
  store %struct.iscsi_task* %15, %struct.iscsi_task** %7, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %19, align 8
  store %struct.iscsi_session* %20, %struct.iscsi_session** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %22 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %27 = call i32 @beiscsi_cleanup_task(%struct.iscsi_task* %26)
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %32 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %33 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.wrb_handle* @alloc_wrb_handle(%struct.beiscsi_hba* %31, i32 %34)
  store %struct.wrb_handle* %35, %struct.wrb_handle** %5, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %37 = call i64 @is_chip_be2_be3r(%struct.beiscsi_hba* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load %struct.beiscsi_offload_params*, %struct.beiscsi_offload_params** %4, align 8
  %41 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %43 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @beiscsi_offload_cxn_v0(%struct.beiscsi_offload_params* %40, %struct.wrb_handle* %41, i32 %44)
  br label %50

46:                                               ; preds = %2
  %47 = load %struct.beiscsi_offload_params*, %struct.beiscsi_offload_params** %4, align 8
  %48 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %49 = call i32 @beiscsi_offload_cxn_v2(%struct.beiscsi_offload_params* %47, %struct.wrb_handle* %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %52 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be_dws_le_to_cpu(i32 %53, i32 4)
  %55 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %56 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DB_WRB_POST_CID_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %63 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DB_DEF_PDU_WRB_INDEX_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @DB_DEF_PDU_WRB_INDEX_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @DB_DEF_PDU_NUM_POSTED_SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %77 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DB_TXULP0_OFFSET, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iowrite32(i32 %75, i64 %80)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @beiscsi_cleanup_task(%struct.iscsi_task*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.wrb_handle* @alloc_wrb_handle(%struct.beiscsi_hba*, i32) #1

declare dso_local i64 @is_chip_be2_be3r(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_offload_cxn_v0(%struct.beiscsi_offload_params*, %struct.wrb_handle*, i32) #1

declare dso_local i32 @beiscsi_offload_cxn_v2(%struct.beiscsi_offload_params*, %struct.wrb_handle*) #1

declare dso_local i32 @be_dws_le_to_cpu(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
