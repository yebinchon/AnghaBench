; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.h_pdc_pkt_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.h_pdc_pkt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@PDC_PKT_READ = common dso_local global i32 0, align 4
@PDC_PKT_NODATA = common dso_local global i32 0, align 4
@ATA_DEVICE_OBS = common dso_local global i32 0, align 4
@ATA_DEV1 = common dso_local global i32 0, align 4
@PDC_PKT_CLEAR_BSY = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@PDC_REG_DEVCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_taskfile*, i32, i32, i32*)* @pdc_pkt_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_pkt_header(%struct.ata_taskfile* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = bitcast i32* %11 to i64*
  store i64* %12, i64** %10, align 8
  %13 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %37 [
    i32 129, label %16
    i32 128, label %32
  ]

16:                                               ; preds = %4
  %17 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @PDC_PKT_READ, align 4
  %25 = call i64 @cpu_to_le32(i32 %24)
  %26 = load i64*, i64** %10, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %25, i64* %27, align 8
  br label %31

28:                                               ; preds = %16
  %29 = load i64*, i64** %10, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  br label %39

32:                                               ; preds = %4
  %33 = load i32, i32* @PDC_PKT_NODATA, align 4
  %34 = call i64 @cpu_to_le32(i32 %33)
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %34, i64* %36, align 8
  br label %39

37:                                               ; preds = %4
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %37, %32, %31
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @cpu_to_le32(i32 %40)
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %41, i64* %43, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @ATA_DEVICE_OBS, align 4
  store i32 %49, i32* %9, align 4
  br label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @ATA_DEVICE_OBS, align 4
  %52 = load i32, i32* @ATA_DEV1, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %48
  %55 = load i32, i32* @PDC_PKT_CLEAR_BSY, align 4
  %56 = or i32 32, %55
  %57 = load i32, i32* @ATA_REG_DEVICE, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 13
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @PDC_REG_DEVCTL, align 4
  %65 = or i32 32, %64
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 14
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 15
  store i32 %70, i32* %72, align 4
  ret i32 16
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
