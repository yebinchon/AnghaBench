; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_terminate_rport_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_terminate_rport_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fc_rport*)* }

@SDEV_TRANSPORT_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport*)* @fc_terminate_rport_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_terminate_rport_io(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.fc_internal*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %5 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %6 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fc_internal* @to_fc_internal(i32 %9)
  store %struct.fc_internal* %10, %struct.fc_internal** %4, align 8
  %11 = load %struct.fc_internal*, %struct.fc_internal** %4, align 8
  %12 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.fc_rport*)*, i32 (%struct.fc_rport*)** %14, align 8
  %16 = icmp ne i32 (%struct.fc_rport*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.fc_internal*, %struct.fc_internal** %4, align 8
  %19 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.fc_rport*)*, i32 (%struct.fc_rport*)** %21, align 8
  %23 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %24 = call i32 %22(%struct.fc_rport* %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %27 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %26, i32 0, i32 0
  %28 = load i32, i32* @SDEV_TRANSPORT_OFFLINE, align 4
  %29 = call i32 @__scsi_target_unblock(i32* %27, i32 %28)
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i32 @__scsi_target_unblock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
