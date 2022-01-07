; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_terminate_rport_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_terminate_rport_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fc_rport = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"sctrpi1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport*)* @zfcp_scsi_terminate_rport_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_scsi_terminate_rport_io(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %6 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %7 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %13, %struct.zfcp_adapter** %5, align 8
  %14 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %16 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %17 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %15, i32 %18)
  store %struct.zfcp_port* %19, %struct.zfcp_port** %3, align 8
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %21 = icmp ne %struct.zfcp_port* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %24 = call i32 @zfcp_port_get(%struct.zfcp_port* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0))
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %28 = icmp ne %struct.zfcp_port* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %31 = call i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port* %30, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %33 = call i32 @zfcp_port_put(%struct.zfcp_port* %32)
  br label %34

34:                                               ; preds = %29, %25
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_port_get(%struct.zfcp_port*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
