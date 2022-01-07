; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_gen_passthru_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_gen_passthru_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__*, i64, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.scsi_cmnd = type { i8*, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_gen_passthru_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_gen_passthru_sense(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 3
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 2
  store %struct.ata_taskfile* %12, %struct.ata_taskfile** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %29 = call i32 @memset(i8* %27, i32 0, i32 %28)
  %30 = load i32, i32* @DRIVER_SENSE, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %37 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %1
  %41 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %42 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATA_BUSY, align 4
  %45 = load i32, i32* @ATA_DF, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ATA_ERR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ATA_DRQ, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %43, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %40, %1
  %54 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %55 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %60 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ata_to_sense_error(i32 %58, i32 %61, i8 zeroext %64, i8* %66, i8* %68, i8* %70, i32 %71)
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 15
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %53, %40
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 114, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 9, i8* %83, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 7
  store i8 14, i8* %85, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 12, i8* %87, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 0, i8* %89, align 1
  %90 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %91 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %90, i32 0, i32 1
  %92 = load i8, i8* %91, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8 %92, i8* %94, align 1
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 5
  store i8 %97, i8* %99, align 1
  %100 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %101 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %100, i32 0, i32 3
  %102 = load i8, i8* %101, align 2
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 7
  store i8 %102, i8* %104, align 1
  %105 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %106 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %105, i32 0, i32 4
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 9
  store i8 %107, i8* %109, align 1
  %110 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %111 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %110, i32 0, i32 5
  %112 = load i8, i8* %111, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 11
  store i8 %112, i8* %114, align 1
  %115 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %116 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %115, i32 0, i32 6
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 12
  store i8 %117, i8* %119, align 1
  %120 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %121 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 13
  store i8 %123, i8* %125, align 1
  %126 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %127 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %79
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %136, 1
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  %139 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %140 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %139, i32 0, i32 8
  %141 = load i8, i8* %140, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8 %141, i8* %143, align 1
  %144 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %145 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %144, i32 0, i32 9
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 6
  store i8 %146, i8* %148, align 1
  %149 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %150 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %149, i32 0, i32 10
  %151 = load i8, i8* %150, align 2
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 8
  store i8 %151, i8* %153, align 1
  %154 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %155 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %154, i32 0, i32 11
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 10
  store i8 %156, i8* %158, align 1
  br label %159

159:                                              ; preds = %132, %79
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ata_to_sense_error(i32, i32, i8 zeroext, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
