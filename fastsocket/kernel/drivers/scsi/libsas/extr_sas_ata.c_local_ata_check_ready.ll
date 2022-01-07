; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_local_ata_check_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_local_ata_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.domain_device* }
%struct.domain_device = type { i32 }
%struct.sas_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.domain_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*)* @local_ata_check_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_ata_check_ready(%struct.ata_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.sas_internal*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  %7 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  store %struct.domain_device* %12, %struct.domain_device** %5, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %14 = call %struct.sas_internal* @dev_to_sas_internal(%struct.domain_device* %13)
  store %struct.sas_internal* %14, %struct.sas_internal** %6, align 8
  %15 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %16 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %18, align 8
  %20 = icmp ne i32 (%struct.domain_device*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %23 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %25, align 8
  %27 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %28 = call i32 %26(%struct.domain_device* %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.sas_internal* @dev_to_sas_internal(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
