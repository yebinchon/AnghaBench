; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_remote_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i32, i32, i32, %struct.fc_rport* }
%struct.fc_rport = type { i32 }

@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rport delete:    did:x%x flg:x%x type x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"3184 rport unregister x%06x, rport %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_nodelist*)* @lpfc_unregister_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_unregister_remote_port(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %2, align 8
  %4 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %4, i32 0, i32 4
  %6 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  store %struct.fc_rport* %6, %struct.fc_rport** %3, align 8
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %11 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @lpfc_debugfs_disc_trc(i32 %9, i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load i32, i32* @LOG_NODE, align 4
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %30 = call i32 @lpfc_printf_vlog(i32 %23, i32 %24, i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %28, %struct.fc_rport* %29)
  %31 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %32 = call i32 @fc_remote_port_delete(%struct.fc_rport* %31)
  ret void
}

declare dso_local i32 @lpfc_debugfs_disc_trc(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, %struct.fc_rport*) #1

declare dso_local i32 @fc_remote_port_delete(%struct.fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
