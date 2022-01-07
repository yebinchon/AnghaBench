; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_block_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_block_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.scsi_cd = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @sr_block_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_block_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cd*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.scsi_cd* @scsi_cd_get(i32 %9)
  store %struct.scsi_cd* %10, %struct.scsi_cd** %5, align 8
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.scsi_cd*, %struct.scsi_cd** %5, align 8
  %14 = icmp ne %struct.scsi_cd* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.scsi_cd*, %struct.scsi_cd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %16, i32 0, i32 0
  %18 = load %struct.block_device*, %struct.block_device** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cdrom_open(i32* %17, %struct.block_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.scsi_cd*, %struct.scsi_cd** %5, align 8
  %25 = call i32 @scsi_cd_put(%struct.scsi_cd* %24)
  br label %26

26:                                               ; preds = %23, %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.scsi_cd* @scsi_cd_get(i32) #1

declare dso_local i32 @cdrom_open(i32*, %struct.block_device*, i32) #1

declare dso_local i32 @scsi_cd_put(%struct.scsi_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
