; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_store_fc_vport_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_store_fc_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fc_vport = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_VPORT_DEL = common dso_local global i32 0, align 4
@FC_VPORT_CREATING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@FC_VPORT_DELETING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fc_vport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fc_vport_delete(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fc_vport*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.fc_vport* @transport_class_to_vport(%struct.device* %13)
  store %struct.fc_vport* %14, %struct.fc_vport** %10, align 8
  %15 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %16 = call %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %11, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %23 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FC_VPORT_DEL, align 4
  %26 = load i32, i32* @FC_VPORT_CREATING, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32 %33, i64 %34)
  %36 = load i64, i64* @EBUSY, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %54

38:                                               ; preds = %4
  %39 = load i32, i32* @FC_VPORT_DELETING, align 4
  %40 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %41 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32 %46, i64 %47)
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %50 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %51 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %50, i32 0, i32 1
  %52 = call i32 @fc_queue_work(%struct.Scsi_Host* %49, i32* %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %38, %30
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local %struct.fc_vport* @transport_class_to_vport(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @fc_queue_work(%struct.Scsi_Host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
