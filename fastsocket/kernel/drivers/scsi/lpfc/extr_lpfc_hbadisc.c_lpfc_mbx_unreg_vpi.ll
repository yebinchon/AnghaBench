; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_unreg_vpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_unreg_vpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.lpfc_vport* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_unreg_vpi = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"1800 Could not issue unreg_vpi\0A\00", align 1
@VPORT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %7, i32 0, i32 2
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_hba* %9, %struct.lpfc_hba** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_6__* @mempool_alloc(i32 %12, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = call i32 @lpfc_unreg_vpi(%struct.lpfc_hba* %19, i32 %22, %struct.TYPE_6__* %23)
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.lpfc_vport* %25, %struct.lpfc_vport** %27, align 8
  %28 = load i32, i32* @lpfc_mbx_cmpl_unreg_vpi, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* @MBX_NOWAIT, align 4
  %34 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %31, %struct.TYPE_6__* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %18
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i32, i32* @LOG_MBOX, align 4
  %42 = load i32, i32* @LOG_VPORT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %39, i32 %40, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mempool_free(%struct.TYPE_6__* %45, i32 %48)
  %50 = load i32, i32* @VPORT_ERROR, align 4
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %38, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_vpi(%struct.lpfc_hba*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
