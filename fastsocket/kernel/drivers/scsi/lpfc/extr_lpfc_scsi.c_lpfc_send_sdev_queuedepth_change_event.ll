; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_sdev_queuedepth_change_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_sdev_queuedepth_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_fast_path_event = type { %struct.TYPE_8__, %struct.lpfc_vport*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i32, i32 }

@FC_REG_SCSI_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_VARQUEDEPTH = common dso_local global i32 0, align 4
@LPFC_EVT_FASTPATH_MGMT_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i8*, i8*)* @lpfc_send_sdev_queuedepth_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_send_sdev_queuedepth_change_event(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1, %struct.lpfc_nodelist* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.lpfc_fast_path_event*, align 8
  %14 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %16 = call %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba* %15)
  store %struct.lpfc_fast_path_event* %16, %struct.lpfc_fast_path_event** %13, align 8
  %17 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %18 = icmp ne %struct.lpfc_fast_path_event* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %96

20:                                               ; preds = %6
  %21 = load i32, i32* @FC_REG_SCSI_EVENT, align 4
  %22 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %23 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @LPFC_EVENT_VARQUEDEPTH, align 4
  %28 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %29 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %27, i32* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %35 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i8* %33, i8** %38, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %40 = icmp ne %struct.lpfc_nodelist* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %20
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %43 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %47 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 1
  %53 = call i32 @memcpy(i32* %50, i32* %52, i32 4)
  %54 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %55 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 0
  %61 = call i32 @memcpy(i32* %58, i32* %60, i32 4)
  br label %62

62:                                               ; preds = %45, %41, %20
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %65 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8* %63, i8** %67, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %70 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %74 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %75 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %74, i32 0, i32 1
  store %struct.lpfc_vport* %73, %struct.lpfc_vport** %75, align 8
  %76 = load i32, i32* @LPFC_EVT_FASTPATH_MGMT_EVT, align 4
  %77 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %78 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %85 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 1
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 0
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %95 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %94)
  br label %96

96:                                               ; preds = %62, %19
  ret void
}

declare dso_local %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
