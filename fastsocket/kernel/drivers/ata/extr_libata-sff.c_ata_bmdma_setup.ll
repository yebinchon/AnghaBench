; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_bmdma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_bmdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_6__, %struct.ata_port* }
%struct.TYPE_6__ = type { i32 }
%struct.ata_port = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.ata_port*, %struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i64 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_DMA_TABLE_OFS = common dso_local global i64 0, align 8
@ATA_DMA_CMD = common dso_local global i64 0, align 8
@ATA_DMA_WR = common dso_local global i32 0, align 4
@ATA_DMA_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_bmdma_setup(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @mb()
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATA_DMA_TABLE_OFS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %18, i64 %24)
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATA_DMA_CMD, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ioread8(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ATA_DMA_WR, align 4
  %34 = load i32, i32* @ATA_DMA_START, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* @ATA_DMA_WR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %1
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ATA_DMA_CMD, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @iowrite8(i32 %46, i64 %52)
  %54 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ata_port*, %struct.TYPE_6__*)*, i32 (%struct.ata_port*, %struct.TYPE_6__*)** %57, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %60 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %61 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %60, i32 0, i32 0
  %62 = call i32 %58(%struct.ata_port* %59, %struct.TYPE_6__* %61)
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
