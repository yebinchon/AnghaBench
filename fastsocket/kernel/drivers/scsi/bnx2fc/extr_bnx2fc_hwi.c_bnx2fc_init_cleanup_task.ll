; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_init_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_init_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { %struct.bnx2fc_rport* }
%struct.bnx2fc_rport = type { i32, i64 }
%struct.fcoe_task_ctx_entry = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@FCOE_TASK_TYPE_EXCHANGE_CLEANUP = common dso_local global i32 0, align 4
@FCOE_TCE_TX_WR_RX_RD_CONST_TASK_TYPE_SHIFT = common dso_local global i32 0, align 4
@FCOE_TASK_CLASS_TYPE_3 = common dso_local global i32 0, align 4
@FCOE_TCE_TX_WR_RX_RD_CONST_CLASS_TYPE_SHIFT = common dso_local global i32 0, align 4
@TYPE_TAPE = common dso_local global i64 0, align 8
@FCOE_TASK_DEV_TYPE_TAPE = common dso_local global i32 0, align 4
@FCOE_TCE_TX_WR_RX_RD_CONST_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@FCOE_TASK_DEV_TYPE_DISK = common dso_local global i32 0, align 4
@FCOE_TASK_TX_STATE_EXCHANGE_CLEANUP = common dso_local global i32 0, align 4
@FCOE_TCE_TX_WR_RX_RD_CONST_TX_STATE_SHIFT = common dso_local global i32 0, align 4
@FCOE_TCE_RX_WR_TX_RD_CONST_CID_SHIFT = common dso_local global i32 0, align 4
@FCOE_TCE_RX_WR_TX_RD_VAR_EXP_FIRST_FRAME_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_init_cleanup_task(%struct.bnx2fc_cmd* %0, %struct.fcoe_task_ctx_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2fc_cmd*, align 8
  %5 = alloca %struct.fcoe_task_ctx_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2fc_rport*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %4, align 8
  store %struct.fcoe_task_ctx_entry* %1, %struct.fcoe_task_ctx_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @FCOE_TASK_TYPE_EXCHANGE_CLEANUP, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %11, i32 0, i32 0
  %13 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %12, align 8
  store %struct.bnx2fc_rport* %13, %struct.bnx2fc_rport** %8, align 8
  %14 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %18 = call i32 @memset(%struct.fcoe_task_ctx_entry* %17, i32 0, i32 20)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FCOE_TCE_TX_WR_RX_RD_CONST_TASK_TYPE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %23 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @FCOE_TASK_CLASS_TYPE_3, align 4
  %27 = load i32, i32* @FCOE_TCE_TX_WR_RX_RD_CONST_CLASS_TYPE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %30 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %36 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TYPE_TAPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %3
  %41 = load i32, i32* @FCOE_TASK_DEV_TYPE_TAPE, align 4
  %42 = load i32, i32* @FCOE_TCE_TX_WR_RX_RD_CONST_DEV_TYPE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %45 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %60

50:                                               ; preds = %3
  %51 = load i32, i32* @FCOE_TASK_DEV_TYPE_DISK, align 4
  %52 = load i32, i32* @FCOE_TCE_TX_WR_RX_RD_CONST_DEV_TYPE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %55 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %50, %40
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %63 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* @FCOE_TASK_TX_STATE_EXCHANGE_CLEANUP, align 4
  %69 = load i32, i32* @FCOE_TCE_TX_WR_RX_RD_CONST_TX_STATE_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %72 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @FCOE_TCE_RX_WR_TX_RD_CONST_CID_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %79 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @FCOE_TCE_RX_WR_TX_RD_VAR_EXP_FIRST_FRAME_SHIFT, align 4
  %83 = shl i32 1, %82
  %84 = load %struct.fcoe_task_ctx_entry*, %struct.fcoe_task_ctx_entry** %5, align 8
  %85 = getelementptr inbounds %struct.fcoe_task_ctx_entry, %struct.fcoe_task_ctx_entry* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  ret void
}

declare dso_local i32 @memset(%struct.fcoe_task_ctx_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
