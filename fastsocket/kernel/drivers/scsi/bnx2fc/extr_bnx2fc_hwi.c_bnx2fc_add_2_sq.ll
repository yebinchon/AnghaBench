; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_add_2_sq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_add_2_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i64, i32, %struct.fcoe_sqe* }
%struct.fcoe_sqe = type { i32 }

@FCOE_SQE_TASK_ID_SHIFT = common dso_local global i32 0, align 4
@FCOE_SQE_TOGGLE_BIT_SHIFT = common dso_local global i32 0, align 4
@BNX2FC_SQ_WQES_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_add_2_sq(%struct.bnx2fc_rport* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2fc_rport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fcoe_sqe*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %6, i32 0, i32 2
  %8 = load %struct.fcoe_sqe*, %struct.fcoe_sqe** %7, align 8
  %9 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.fcoe_sqe, %struct.fcoe_sqe* %8, i64 %11
  store %struct.fcoe_sqe* %12, %struct.fcoe_sqe** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FCOE_SQE_TASK_ID_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load %struct.fcoe_sqe*, %struct.fcoe_sqe** %5, align 8
  %17 = getelementptr inbounds %struct.fcoe_sqe, %struct.fcoe_sqe* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FCOE_SQE_TOGGLE_BIT_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.fcoe_sqe*, %struct.fcoe_sqe** %5, align 8
  %24 = getelementptr inbounds %struct.fcoe_sqe, %struct.fcoe_sqe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load i64, i64* @BNX2FC_SQ_WQES_MAX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 1, %38
  %40 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %33, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
