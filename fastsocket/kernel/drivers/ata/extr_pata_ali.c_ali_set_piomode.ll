; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_device = type { i64, i64, i64 }
%struct.ata_timing = type { i32 }

@ATA_TIMING_SETUP = common dso_local global i32 0, align 4
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ali_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_timing, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_timing, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %9)
  store %struct.ata_device* %10, %struct.ata_device** %5, align 8
  store i64 30000, i64* %7, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @ata_timing_compute(%struct.ata_device* %11, i64 %14, %struct.ata_timing* %6, i64 %15, i32 1)
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = icmp ne %struct.ata_device* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ata_timing_compute(%struct.ata_device* %20, i64 %23, %struct.ata_timing* %8, i64 %24, i32 1)
  %26 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %27 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ata_timing_merge(%struct.ata_timing* %8, %struct.ata_timing* %6, %struct.ata_timing* %6, i32 %28)
  %30 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %19
  %35 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %36 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @ata_timing_compute(%struct.ata_device* %35, i64 %38, %struct.ata_timing* %8, i64 %39, i32 1)
  %41 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %42 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ata_timing_merge(%struct.ata_timing* %8, %struct.ata_timing* %6, %struct.ata_timing* %6, i32 %43)
  br label %45

45:                                               ; preds = %34, %19
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATA_DEV_ATA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %54 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %55 = call i32 @ali_fifo_control(%struct.ata_port* %53, %struct.ata_device* %54, i32 0)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %58 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %59 = call i32 @ali_program_modes(%struct.ata_port* %57, %struct.ata_device* %58, %struct.ata_timing* %6, i32 0)
  %60 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %61 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ATA_DEV_ATA, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %67 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %68 = call i32 @ali_fifo_control(%struct.ata_port* %66, %struct.ata_device* %67, i32 5)
  br label %69

69:                                               ; preds = %65, %56
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i64, %struct.ata_timing*, i64, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @ali_fifo_control(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @ali_program_modes(%struct.ata_port*, %struct.ata_device*, %struct.ata_timing*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
