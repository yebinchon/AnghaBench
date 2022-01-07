; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ahc_softc = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Slave Configure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ahc_linux_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_linux_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ahc_softc*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ahc_softc**
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  store %struct.ahc_softc* %10, %struct.ahc_softc** %3, align 8
  %11 = load i64, i64* @bootverbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = call i32 @sdev_printk(i32 %14, %struct.scsi_device* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %19 = call i32 @ahc_linux_device_queue_depth(%struct.scsi_device* %18)
  %20 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @spi_initial_dv(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %27 = call i32 @spi_dv_device(%struct.scsi_device* %26)
  br label %28

28:                                               ; preds = %25, %17
  ret i32 0
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local i32 @ahc_linux_device_queue_depth(%struct.scsi_device*) #1

declare dso_local i32 @spi_initial_dv(i32) #1

declare dso_local i32 @spi_dv_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
