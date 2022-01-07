; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.srp_target = type { %struct.vio_port*, %struct.Scsi_Host* }
%struct.vio_port = type { i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvstgt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvstgt_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.srp_target*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.vio_port*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %6 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %6, i32 0, i32 0
  %8 = call %struct.srp_target* @dev_get_drvdata(i32* %7)
  store %struct.srp_target* %8, %struct.srp_target** %3, align 8
  %9 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %10 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %9, i32 0, i32 1
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %13 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %12, i32 0, i32 0
  %14 = load %struct.vio_port*, %struct.vio_port** %13, align 8
  store %struct.vio_port* %14, %struct.vio_port** %5, align 8
  %15 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %16 = call i32 @crq_queue_destroy(%struct.srp_target* %15)
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call i32 @srp_remove_host(%struct.Scsi_Host* %17)
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = call i32 @scsi_remove_host(%struct.Scsi_Host* %19)
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %22 = call i32 @scsi_tgt_free_queue(%struct.Scsi_Host* %21)
  %23 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %24 = call i32 @srp_target_free(%struct.srp_target* %23)
  %25 = load %struct.vio_port*, %struct.vio_port** %5, align 8
  %26 = call i32 @kfree(%struct.vio_port* %25)
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %28 = call i32 @scsi_host_put(%struct.Scsi_Host* %27)
  ret i32 0
}

declare dso_local %struct.srp_target* @dev_get_drvdata(i32*) #1

declare dso_local i32 @crq_queue_destroy(%struct.srp_target*) #1

declare dso_local i32 @srp_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_tgt_free_queue(%struct.Scsi_Host*) #1

declare dso_local i32 @srp_target_free(%struct.srp_target*) #1

declare dso_local i32 @kfree(%struct.vio_port*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
