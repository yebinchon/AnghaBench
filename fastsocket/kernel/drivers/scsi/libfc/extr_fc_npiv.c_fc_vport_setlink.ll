; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_npiv.c_fc_vport_setlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_npiv.c_fc_vport_setlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.fc_vport* }
%struct.fc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@LPORT_MUTEX_VN_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_vport_setlink(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 1
  %8 = load %struct.fc_vport*, %struct.fc_vport** %7, align 8
  store %struct.fc_vport* %8, %struct.fc_vport** %3, align 8
  %9 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %10 = call %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.fc_lport* %12, %struct.fc_lport** %5, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 0
  %18 = load i32, i32* @LPORT_MUTEX_VN_PORT, align 4
  %19 = call i32 @mutex_lock_nested(i32* %17, i32 %18)
  %20 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %21 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %22 = call i32 @__fc_vport_setlink(%struct.fc_lport* %20, %struct.fc_lport* %21)
  %23 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport*) #1

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @__fc_vport_setlink(%struct.fc_lport*, %struct.fc_lport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
