; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_set_port_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_set_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32 }
%struct.scsi_qla_host = type { i32 }

@ISCSI_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_10MBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_100MBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_1GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_10GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @qla4xxx_set_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_set_port_speed(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.iscsi_cls_host*, align 8
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = call %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host* %6)
  store %struct.scsi_qla_host* %7, %struct.scsi_qla_host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  store %struct.iscsi_cls_host* %10, %struct.iscsi_cls_host** %4, align 8
  %11 = load i32, i32* @ISCSI_PORT_SPEED_UNKNOWN, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = call i32 @qla4xxx_get_firmware_state(%struct.scsi_qla_host* %12)
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3840
  switch i32 %17, label %26 [
    i32 129, label %18
    i32 131, label %20
    i32 128, label %22
    i32 130, label %24
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @ISCSI_PORT_SPEED_10MBPS, align 4
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @ISCSI_PORT_SPEED_100MBPS, align 4
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @ISCSI_PORT_SPEED_1GBPS, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ISCSI_PORT_SPEED_10GBPS, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %1, %24, %22, %20, %18
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host*) #1

declare dso_local i32 @qla4xxx_get_firmware_state(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
