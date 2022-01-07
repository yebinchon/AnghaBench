; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_prep_tgt_reset_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_prep_tgt_reset_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.iscsi_tm = type { i32, i32, i32 }

@ISCSI_OP_SCSI_TMFUNC = common dso_local global i32 0, align 4
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_TARGET_WARM_RESET = common dso_local global i32 0, align 4
@ISCSI_FLAG_TM_FUNC_MASK = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@RESERVED_ITT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.iscsi_tm*)* @iscsi_prep_tgt_reset_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_prep_tgt_reset_pdu(%struct.scsi_cmnd* %0, %struct.iscsi_tm* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.iscsi_tm*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.iscsi_tm* %1, %struct.iscsi_tm** %4, align 8
  %5 = load %struct.iscsi_tm*, %struct.iscsi_tm** %4, align 8
  %6 = call i32 @memset(%struct.iscsi_tm* %5, i32 0, i32 12)
  %7 = load i32, i32* @ISCSI_OP_SCSI_TMFUNC, align 4
  %8 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.iscsi_tm*, %struct.iscsi_tm** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ISCSI_TM_FUNC_TARGET_WARM_RESET, align 4
  %13 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.iscsi_tm*, %struct.iscsi_tm** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %18 = load %struct.iscsi_tm*, %struct.iscsi_tm** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @RESERVED_ITT, align 4
  %23 = load %struct.iscsi_tm*, %struct.iscsi_tm** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_tm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
