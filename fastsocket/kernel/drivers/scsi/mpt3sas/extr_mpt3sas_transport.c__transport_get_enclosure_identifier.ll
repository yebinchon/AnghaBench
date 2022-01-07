; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_get_enclosure_identifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_get_enclosure_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_rphy*, i32*)* @_transport_get_enclosure_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_transport_get_enclosure_identifier(%struct.sas_rphy* %0, i32* %1) #0 {
  %3 = alloca %struct.sas_rphy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca %struct._sas_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sas_rphy* %0, %struct.sas_rphy** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %10 = call %struct.MPT3SAS_ADAPTER* @rphy_to_ioc(%struct.sas_rphy* %9)
  store %struct.MPT3SAS_ADAPTER* %10, %struct.MPT3SAS_ADAPTER** %5, align 8
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %12 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %16 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %17 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %15, i32 %19)
  store %struct._sas_device* %20, %struct._sas_device** %6, align 8
  %21 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %22 = icmp ne %struct._sas_device* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %25 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %8, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local %struct.MPT3SAS_ADAPTER* @rphy_to_ioc(%struct.sas_rphy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
