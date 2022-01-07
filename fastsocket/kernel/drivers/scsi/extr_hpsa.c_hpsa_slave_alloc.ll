; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.hpsa_scsi_dev_t*, i32 }
%struct.hpsa_scsi_dev_t = type { i32 }
%struct.ctlr_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @hpsa_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ctlr_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = call %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device* %6)
  store %struct.ctlr_info* %7, %struct.ctlr_info** %5, align 8
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = call i32 @sdev_channel(%struct.scsi_device* %13)
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = call i32 @sdev_id(%struct.scsi_device* %15)
  %17 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.hpsa_scsi_dev_t* @lookup_hpsa_scsi_dev(%struct.ctlr_info* %12, i32 %14, i32 %16, i32 %19)
  store %struct.hpsa_scsi_dev_t* %20, %struct.hpsa_scsi_dev_t** %3, align 8
  %21 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %22 = icmp ne %struct.hpsa_scsi_dev_t* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  store %struct.hpsa_scsi_dev_t* %24, %struct.hpsa_scsi_dev_t** %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret i32 0
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.hpsa_scsi_dev_t* @lookup_hpsa_scsi_dev(%struct.ctlr_info*, i32, i32, i32) #1

declare dso_local i32 @sdev_channel(%struct.scsi_device*) #1

declare dso_local i32 @sdev_id(%struct.scsi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
