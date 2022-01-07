; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_gen_ata_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_gen_ata_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_taskfile, %struct.TYPE_4__*, i64, %struct.scsi_cmnd*, %struct.ata_device* }
%struct.ata_taskfile = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.scsi_cmnd = type { i8*, i32 }
%struct.ata_device = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_gen_ata_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_gen_ata_sense(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 4
  %12 = load %struct.ata_device*, %struct.ata_device** %11, align 8
  store %struct.ata_device* %12, %struct.ata_device** %3, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 3
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %4, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 0
  store %struct.ata_taskfile* %17, %struct.ata_taskfile** %5, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %22, i8** %7, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %34 = call i32 @memset(i8* %32, i32 0, i32 %33)
  %35 = load i32, i32* @DRIVER_SENSE, align 4
  %36 = shl i32 %35, 24
  %37 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 114, i8* %42, align 1
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %1
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATA_BUSY, align 4
  %52 = load i32, i32* @ATA_DF, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ATA_ERR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ATA_DRQ, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %50, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %47, %1
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %62 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %67 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %70 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ata_to_sense_error(i32 %65, i32 %68, i32 %71, i8* %73, i8* %75, i8* %77, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 15
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 1
  br label %86

86:                                               ; preds = %60, %47
  %87 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %88 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %87, i32 0, i32 0
  %89 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %90 = call i32 @ata_tf_read_block(%struct.ata_taskfile* %88, %struct.ata_device* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 7
  store i8 12, i8* %92, align 1
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 10, i8* %96, align 1
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, 128
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %98, align 1
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 40
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 6
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 32
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 7
  store i8 %110, i8* %112, align 1
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, 24
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  store i8 %115, i8* %117, align 1
  %118 = load i32, i32* %9, align 4
  %119 = ashr i32 %118, 16
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 9
  store i8 %120, i8* %122, align 1
  %123 = load i32, i32* %9, align 4
  %124 = ashr i32 %123, 8
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 10
  store i8 %125, i8* %127, align 1
  %128 = load i32, i32* %9, align 4
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 11
  store i8 %129, i8* %131, align 1
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ata_to_sense_error(i32, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @ata_tf_read_block(%struct.ata_taskfile*, %struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
