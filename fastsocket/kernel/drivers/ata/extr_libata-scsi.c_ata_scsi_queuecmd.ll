; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_queuecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_queuecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.ata_port = type { i32 }
%struct.ata_device = type { i32 }

@DID_BAD_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_scsi_queuecmd(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %7, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %17 = call %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host* %16)
  store %struct.ata_port* %17, %struct.ata_port** %5, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spin_unlock(i32 %20)
  %22 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @spin_lock(i32 %24)
  %26 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i32 @ata_scsi_dump_cdb(%struct.ata_port* %26, %struct.scsi_cmnd* %27)
  %29 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %30 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %31 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %29, %struct.scsi_device* %30)
  store %struct.ata_device* %31, %struct.ata_device** %6, align 8
  %32 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %33 = call i64 @likely(%struct.ata_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %38 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %39 = call i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd* %36, void (%struct.scsi_cmnd*)* %37, %struct.ata_device* %38)
  store i32 %39, i32* %9, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @DID_BAD_TARGET, align 4
  %42 = shl i32 %41, 16
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %45(%struct.scsi_cmnd* %46)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %49 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @spin_unlock(i32 %50)
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @spin_lock(i32 %54)
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @ata_scsi_dump_cdb(%struct.ata_port*, %struct.scsi_cmnd*) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i64 @likely(%struct.ata_device*) #1

declare dso_local i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*, %struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
