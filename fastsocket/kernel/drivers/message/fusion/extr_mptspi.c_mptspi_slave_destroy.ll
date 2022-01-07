; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptspi.c_mptspi_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptspi.c_mptspi_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.scsi_target = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct._CONFIG_PAGE_SCSI_DEVICE_1 = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @mptspi_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptspi_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %7)
  store %struct.scsi_target* %8, %struct.scsi_target** %3, align 8
  %9 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, %struct._CONFIG_PAGE_SCSI_DEVICE_1* %6, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, %struct._CONFIG_PAGE_SCSI_DEVICE_1* %6, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, %struct._CONFIG_PAGE_SCSI_DEVICE_1* %6, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %29 = call i32 @mptspi_write_spi_device_pg1(%struct.scsi_target* %28, %struct._CONFIG_PAGE_SCSI_DEVICE_1* %6)
  br label %30

30:                                               ; preds = %24, %19, %1
  %31 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %32 = call i32 @mptscsih_slave_destroy(%struct.scsi_device* %31)
  ret void
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @mptspi_write_spi_device_pg1(%struct.scsi_target*, %struct._CONFIG_PAGE_SCSI_DEVICE_1*) #1

declare dso_local i32 @mptscsih_slave_destroy(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
