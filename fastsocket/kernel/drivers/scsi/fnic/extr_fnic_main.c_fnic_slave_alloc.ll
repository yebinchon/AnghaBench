; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_main.c_fnic_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_main.c_fnic_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.fc_rport = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@FNIC_DFLT_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @fnic_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = call i32 @scsi_target(%struct.scsi_device* %5)
  %7 = call %struct.fc_rport* @starget_to_rport(i32 %6)
  store %struct.fc_rport* %7, %struct.fc_rport** %4, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %11 = icmp ne %struct.fc_rport* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %14 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = load i32, i32* @FNIC_DFLT_QUEUE_DEPTH, align 4
  %22 = call i32 @scsi_activate_tcq(%struct.scsi_device* %20, i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
