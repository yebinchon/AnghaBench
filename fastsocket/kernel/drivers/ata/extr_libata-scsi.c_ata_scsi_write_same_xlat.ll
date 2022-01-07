; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_write_same_xlat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_write_same_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.scsi_cmnd*, %struct.ata_taskfile }
%struct.ata_device = type { i32 }
%struct.scsi_cmnd = type { i32*, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i64, i32 }

@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_CMD_DSM = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_write_same_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_write_same_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 2
  store %struct.ata_taskfile* %13, %struct.ata_taskfile** %4, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 1
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %5, align 8
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 0
  %19 = load %struct.ata_device*, %struct.ata_device** %18, align 8
  store %struct.ata_device* %19, %struct.ata_device** %6, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %101

32:                                               ; preds = %1
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 16
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %101

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @scsi_16_lba_len(i32* %42, i32* %8, i32* %9)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %101

54:                                               ; preds = %41
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %101

59:                                               ; preds = %54
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = call i32 @scsi_sglist(%struct.scsi_cmnd* %60)
  %62 = call i32 @sg_page(i32 %61)
  %63 = call i8* @page_address(i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ata_set_lba_range_entries(i8* %64, i32 512, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @ATA_PROT_DMA, align 4
  %69 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %70 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %72 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @ATA_DSM_TRIM, align 4
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sdiv i32 %76, 512
  %78 = ashr i32 %77, 8
  %79 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %80 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sdiv i32 %81, 512
  %83 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %84 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @ATA_CMD_DSM, align 4
  %86 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %87 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %89 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %100 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %99)
  store i32 0, i32* %2, align 4
  br label %105

101:                                              ; preds = %58, %53, %40, %31
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %103 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %104 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %102, i32 %103, i32 36, i32 0)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %59
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_16_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @ata_set_lba_range_entries(i8*, i32, i32, i32) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
