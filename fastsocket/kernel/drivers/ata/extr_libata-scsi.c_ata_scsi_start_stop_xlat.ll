; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_start_stop_xlat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_start_stop_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i32*, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@ATA_CMD_VERIFY = common dso_local global i32 0, align 4
@ATA_FLAG_NO_POWEROFF_SPINDOWN = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@ATA_FLAG_NO_HIBERNATE_SPINDOWN = common dso_local global i32 0, align 4
@ATA_CMD_STANDBYNOW1 = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_start_stop_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_start_stop_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 3
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 2
  store %struct.ata_taskfile* %11, %struct.ata_taskfile** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %129

20:                                               ; preds = %1
  %21 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %22 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @ATA_PROT_NODATA, align 4
  %29 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %30 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %129

44:                                               ; preds = %37
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 15
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %129

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %60 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ATA_DFLAG_LBA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %58
  %70 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %71 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %72 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  %77 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %78 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %80 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %79, i32 0, i32 4
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @ATA_LBA, align 4
  %82 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %83 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %93

86:                                               ; preds = %58
  %87 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %88 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %87, i32 0, i32 4
  store i32 1, i32* %88, align 4
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %69
  %94 = load i32, i32* @ATA_CMD_VERIFY, align 4
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  br label %128

97:                                               ; preds = %52
  %98 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %99 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATA_FLAG_NO_POWEROFF_SPINDOWN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load i64, i64* @system_state, align 8
  %108 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %133

111:                                              ; preds = %106, %97
  %112 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATA_FLAG_NO_HIBERNATE_SPINDOWN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = call i64 (...) @system_entering_hibernation()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %133

124:                                              ; preds = %120, %111
  %125 = load i32, i32* @ATA_CMD_STANDBYNOW1, align 4
  %126 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %127 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %93
  store i32 0, i32* %2, align 4
  br label %137

129:                                              ; preds = %51, %43, %19
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %131 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %132 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %130, i32 %131, i32 36, i32 0)
  store i32 1, i32* %2, align 4
  br label %137

133:                                              ; preds = %123, %110
  %134 = load i32, i32* @SAM_STAT_GOOD, align 4
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %129, %128
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @system_entering_hibernation(...) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
