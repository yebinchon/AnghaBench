; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_fw_fcoe_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_fw_fcoe_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_destroy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FCOE_KWQE_OPCODE_DESTROY = common dso_local global i32 0, align 4
@FCOE_KWQE_LAYER_CODE = common dso_local global i32 0, align 4
@FCOE_KWQE_HEADER_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2fc_send_fw_fcoe_destroy_msg(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  %3 = alloca %struct.fcoe_kwqe_destroy, align 4
  %4 = alloca [2 x %struct.kwqe*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  store i32 1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = call i32 @memset(%struct.fcoe_kwqe_destroy* %3, i32 0, i32 8)
  %8 = load i32, i32* @FCOE_KWQE_OPCODE_DESTROY, align 4
  %9 = getelementptr inbounds %struct.fcoe_kwqe_destroy, %struct.fcoe_kwqe_destroy* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @FCOE_KWQE_LAYER_CODE, align 4
  %12 = load i32, i32* @FCOE_KWQE_HEADER_LAYER_CODE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = getelementptr inbounds %struct.fcoe_kwqe_destroy, %struct.fcoe_kwqe_destroy* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = bitcast %struct.fcoe_kwqe_destroy* %3 to %struct.kwqe*
  %17 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %4, i64 0, i64 0
  store %struct.kwqe* %16, %struct.kwqe** %17, align 16
  %18 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %33, align 8
  %35 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %4, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %34(%struct.TYPE_4__* %37, %struct.kwqe** %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %29, %22, %1
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.fcoe_kwqe_destroy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
