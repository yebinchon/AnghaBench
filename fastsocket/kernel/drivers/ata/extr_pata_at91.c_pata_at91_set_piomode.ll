; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at91.c_pata_at91_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at91.c_pata_at91_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_timing = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.at91_ide_info* }
%struct.at91_ide_info = type { i32 }
%struct.ata_device = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Failed to compute ATA timing %d, \09\09\09\09set PIO_0 timing\0A\00", align 1
@initial_timing = common dso_local global %struct.ata_timing zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pata_at91_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_at91_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.at91_ide_info*, align 8
  %6 = alloca %struct.ata_timing, align 4
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.at91_ide_info*, %struct.at91_ide_info** %11, align 8
  store %struct.at91_ide_info* %12, %struct.at91_ide_info** %5, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ata_timing_compute(%struct.ata_device* %13, i32 %16, %struct.ata_timing* %6, i32 1000, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %30 = call i32 @set_smc_timing(i32 %28, %struct.at91_ide_info* %29, %struct.ata_timing* @initial_timing)
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %36 = call i32 @set_smc_timing(i32 %34, %struct.at91_ide_info* %35, %struct.ata_timing* %6)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.at91_ide_info*, %struct.at91_ide_info** %5, align 8
  %39 = call i32 @set_smc_mode(%struct.at91_ide_info* %38)
  ret void
}

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @set_smc_timing(i32, %struct.at91_ide_info*, %struct.ata_timing*) #1

declare dso_local i32 @set_smc_mode(%struct.at91_ide_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
