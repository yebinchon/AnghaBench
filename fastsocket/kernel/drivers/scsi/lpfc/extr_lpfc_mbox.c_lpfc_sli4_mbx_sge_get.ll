; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbx_sge_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbx_sge_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfcMboxq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_mbx_sge = type { i32, i32, i32 }
%struct.lpfc_mbx_nembed_cmd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq* %0, i64 %1, %struct.lpfc_mbx_sge* %2) #0 {
  %4 = alloca %struct.lpfcMboxq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpfc_mbx_sge*, align 8
  %7 = alloca %struct.lpfc_mbx_nembed_cmd*, align 8
  store %struct.lpfcMboxq* %0, %struct.lpfcMboxq** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.lpfc_mbx_sge* %2, %struct.lpfc_mbx_sge** %6, align 8
  %8 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %9 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.lpfc_mbx_nembed_cmd*
  store %struct.lpfc_mbx_nembed_cmd* %13, %struct.lpfc_mbx_nembed_cmd** %7, align 8
  %14 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lpfc_mbx_sge*, %struct.lpfc_mbx_sge** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lpfc_mbx_sge*, %struct.lpfc_mbx_sge** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lpfc_mbx_sge*, %struct.lpfc_mbx_sge** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
