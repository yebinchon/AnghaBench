; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { i64, %struct.device }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }

@MODE_TARGET = common dso_local global i32 0, align 4
@SRP_RPORT_ROLE_INITIATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srp_rport_del(%struct.srp_rport* %0) #0 {
  %2 = alloca %struct.srp_rport*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.srp_rport* %0, %struct.srp_rport** %2, align 8
  %5 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %6 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %5, i32 0, i32 1
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.Scsi_Host* @dev_to_shost(i32 %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MODE_TARGET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %19 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SRP_RPORT_ROLE_INITIATOR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %26 = ptrtoint %struct.srp_rport* %25 to i64
  %27 = call i32 @srp_tgt_it_nexus_destroy(%struct.Scsi_Host* %24, i64 %26)
  br label %28

28:                                               ; preds = %23, %17, %1
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @transport_remove_device(%struct.device* %29)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @device_del(%struct.device* %31)
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 @transport_destroy_device(%struct.device* %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @put_device(%struct.device* %35)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local i32 @srp_tgt_it_nexus_destroy(%struct.Scsi_Host*, i64) #1

declare dso_local i32 @transport_remove_device(%struct.device*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @transport_destroy_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
