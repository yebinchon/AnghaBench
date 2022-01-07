; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_logo_adisc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_logo_adisc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_iocbq = type { i32 }

@ELS_CMD_LOGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_logo_adisc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_logo_adisc_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %15, %struct.lpfc_iocbq** %10, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %18 = call i32 @lpfc_els_abort(%struct.lpfc_hba* %16, %struct.lpfc_nodelist* %17)
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %22 = load i32, i32* @ELS_CMD_LOGO, align 4
  %23 = call i32 @lpfc_rcv_logo(%struct.lpfc_vport* %19, %struct.lpfc_nodelist* %20, %struct.lpfc_iocbq* %21, i32 %22)
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @lpfc_els_abort(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_rcv_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
