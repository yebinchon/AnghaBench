; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_ctl.c__ctl_version_bios_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_ctl.c__ctl_version_bios_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT2SAS_ADAPTER = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%02d.%02d.%02d.%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @_ctl_version_bios_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ctl_version_bios_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %7, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %13 = call %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.MPT2SAS_ADAPTER* %13, %struct.MPT2SAS_ADAPTER** %8, align 8
  %14 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %8, align 8
  %15 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, -16777216
  %23 = lshr i32 %22, 24
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 16711680
  %26 = ashr i32 %25, 16
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 65280
  %29 = ashr i32 %28, 8
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %31)
  ret i32 %32
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
