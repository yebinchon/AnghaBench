; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_set_vport_symbolic_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_set_vport_symbolic_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.lpfc_vport = type { i64 }

@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@SLI_CTNS_RSPN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_vport*)* @lpfc_set_vport_symbolic_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_set_vport_symbolic_name(%struct.fc_vport* %0) #0 {
  %2 = alloca %struct.fc_vport*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %2, align 8
  %4 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %5 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.lpfc_vport**
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  store %struct.lpfc_vport* %8, %struct.lpfc_vport** %3, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LPFC_VPORT_READY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %16 = load i32, i32* @SLI_CTNS_RSPN_ID, align 4
  %17 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %15, i32 %16, i32 0, i32 0)
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
