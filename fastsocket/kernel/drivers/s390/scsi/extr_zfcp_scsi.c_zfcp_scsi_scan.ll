; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fc_rport* }
%struct.fc_rport = type { i64, i32, i32 }
%struct.scsi_lun = type { i32 }

@FC_PORTSTATE_ONLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_scsi_scan(%struct.zfcp_unit* %0) #0 {
  %2 = alloca %struct.zfcp_unit*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %2, align 8
  %4 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  store %struct.fc_rport* %8, %struct.fc_rport** %3, align 8
  %9 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %10 = icmp ne %struct.fc_rport* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %13 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FC_PORTSTATE_ONLINE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %19 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %18, i32 0, i32 2
  %20 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %21 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %24 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.scsi_lun*
  %26 = call i32 @scsilun_to_int(%struct.scsi_lun* %25)
  %27 = call i32 @scsi_scan_target(i32* %19, i32 0, i32 %22, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %17, %11, %1
  ret void
}

declare dso_local i32 @scsi_scan_target(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @scsilun_to_int(%struct.scsi_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
