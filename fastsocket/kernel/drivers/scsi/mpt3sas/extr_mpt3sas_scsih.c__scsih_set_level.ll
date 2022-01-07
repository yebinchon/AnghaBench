; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_set_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@RAID_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@RAID_LEVEL_0 = common dso_local global i32 0, align 4
@RAID_LEVEL_10 = common dso_local global i32 0, align 4
@RAID_LEVEL_1E = common dso_local global i32 0, align 4
@RAID_LEVEL_1 = common dso_local global i32 0, align 4
@mpt3sas_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @_scsih_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_set_level(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RAID_LEVEL_UNKNOWN, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %16 [
    i32 131, label %8
    i32 129, label %10
    i32 128, label %12
    i32 130, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @RAID_LEVEL_0, align 4
  store i32 %9, i32* %5, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @RAID_LEVEL_10, align 4
  store i32 %11, i32* %5, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @RAID_LEVEL_1E, align 4
  store i32 %13, i32* %5, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @RAID_LEVEL_1, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %2, %14, %12, %10, %8
  %17 = load i32, i32* @mpt3sas_raid_template, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @raid_set_level(i32 %17, i32* %19, i32 %20)
  ret void
}

declare dso_local i32 @raid_set_level(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
