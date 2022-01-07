; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, i64, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@TYPE_DISK = common dso_local global i64 0, align 8
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ibmvfc_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPE_DISK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %28 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %29 = call i32 @scsi_set_tag_type(%struct.scsi_device* %27, i32 %28)
  %30 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %31 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @scsi_activate_tcq(%struct.scsi_device* %30, i32 %33)
  br label %41

35:                                               ; preds = %21
  %36 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %37 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %26
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_set_tag_type(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
