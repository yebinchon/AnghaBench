; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32 }

@TYPE_DISK = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ibmvscsi_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 3
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
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 120, %24
  %26 = call i32 @blk_queue_rq_timeout(i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %28, i32 0, i32 %31)
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
