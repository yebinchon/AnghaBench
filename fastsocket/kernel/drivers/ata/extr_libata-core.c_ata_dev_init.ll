; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i8*, i8*, i8*, i64, i32 }
%struct.ata_link = type { i64, i32, i32, %struct.ata_port* }
%struct.ata_port = type { i32 }

@ATA_DFLAG_INIT_MASK = common dso_local global i32 0, align 4
@ATA_DEVICE_CLEAR_BEGIN = common dso_local global i32 0, align 4
@ATA_DEVICE_CLEAR_END = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_dev_init(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %7 = call %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %6)
  store %struct.ata_link* %7, %struct.ata_link** %3, align 8
  %8 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %9 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %8, i32 0, i32 3
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %4, align 8
  %11 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %15 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load i32, i32* @ATA_DFLAG_INIT_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32 %33, i64 %34)
  %36 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %37 = bitcast %struct.ata_device* %36 to i8*
  %38 = load i32, i32* @ATA_DEVICE_CLEAR_BEGIN, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = load i32, i32* @ATA_DEVICE_CLEAR_END, align 4
  %42 = load i32, i32* @ATA_DEVICE_CLEAR_BEGIN, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @memset(i8* %40, i32 0, i32 %43)
  %45 = load i8*, i8** @UINT_MAX, align 8
  %46 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @UINT_MAX, align 8
  %49 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @UINT_MAX, align 8
  %52 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret void
}

declare dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
