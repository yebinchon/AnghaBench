; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_autosense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_autosense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i64, i32, %struct.TYPE_4__*, i32, i64, %struct.esp_cmd_entry*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.esp*, i32, i32, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.esp_cmd_entry = type { i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"esp%d: Doing auto-sense for tgt[%d] lun[%d]\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_2 = common dso_local global i64 0, align 8
@ESP_SELECT_BASIC = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_BUSID_RESELID = common dso_local global i32 0, align 4
@ESP_BUSID_CTR32BIT = common dso_local global i32 0, align 4
@ESP_BUSID = common dso_local global i32 0, align 4
@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_CMD_SELA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*)* @esp_autosense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_autosense(%struct.esp* %0, %struct.esp_cmd_entry* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %4, align 8
  %11 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %12 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %11, i32 0, i32 3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %6, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %24 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %2
  %28 = load %struct.esp*, %struct.esp** %3, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 7
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @esp_log_autosense(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %40 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.esp*, %struct.esp** %3, align 8
  %42 = getelementptr inbounds %struct.esp, %struct.esp* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.esp*, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32)** %44, align 8
  %46 = load %struct.esp*, %struct.esp** %3, align 8
  %47 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %48 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 %45(%struct.esp* %46, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %54 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %27, %2
  %56 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %57 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %60 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %62 = load %struct.esp*, %struct.esp** %3, align 8
  %63 = getelementptr inbounds %struct.esp, %struct.esp* %62, i32 0, i32 6
  store %struct.esp_cmd_entry* %61, %struct.esp_cmd_entry** %63, align 8
  %64 = load %struct.esp*, %struct.esp** %3, align 8
  %65 = getelementptr inbounds %struct.esp, %struct.esp* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %9, align 8
  %67 = load %struct.esp*, %struct.esp** %3, align 8
  %68 = getelementptr inbounds %struct.esp, %struct.esp* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @IDENTIFY(i32 0, i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32, i32* @REQUEST_SENSE, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %76 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %77 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SCSI_2, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %55
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 5
  br label %85

84:                                               ; preds = %55
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ 0, %84 ]
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %9, align 8
  store i32 0, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  store i32 0, i32* %91, align 4
  %93 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %9, align 8
  store i32 0, i32* %96, align 4
  %98 = load i32, i32* @ESP_SELECT_BASIC, align 4
  %99 = load %struct.esp*, %struct.esp** %3, align 8
  %100 = getelementptr inbounds %struct.esp, %struct.esp* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %10, align 4
  %102 = load %struct.esp*, %struct.esp** %3, align 8
  %103 = getelementptr inbounds %struct.esp, %struct.esp* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FASHME, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %85
  %108 = load i32, i32* @ESP_BUSID_RESELID, align 4
  %109 = load i32, i32* @ESP_BUSID_CTR32BIT, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %107, %85
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @ESP_BUSID, align 4
  %116 = call i32 @esp_write8(i32 %114, i32 %115)
  %117 = load %struct.esp*, %struct.esp** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @esp_write_tgt_sync(%struct.esp* %117, i32 %118)
  %120 = load %struct.esp*, %struct.esp** %3, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @esp_write_tgt_config3(%struct.esp* %120, i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.esp*, %struct.esp** %3, align 8
  %125 = getelementptr inbounds %struct.esp, %struct.esp* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = ptrtoint i32* %123 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %10, align 4
  %132 = load %struct.esp*, %struct.esp** %3, align 8
  %133 = getelementptr inbounds %struct.esp, %struct.esp* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @FASHME, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %113
  %138 = load %struct.esp*, %struct.esp** %3, align 8
  %139 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %140 = call i32 @scsi_esp_cmd(%struct.esp* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %113
  %142 = load %struct.esp*, %struct.esp** %3, align 8
  %143 = getelementptr inbounds %struct.esp, %struct.esp* %142, i32 0, i32 3
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32 (%struct.esp*, i32, i32, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32, i32, i32)** %145, align 8
  %147 = load %struct.esp*, %struct.esp** %3, align 8
  %148 = load %struct.esp*, %struct.esp** %3, align 8
  %149 = getelementptr inbounds %struct.esp, %struct.esp* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @ESP_CMD_DMA, align 4
  %153 = load i32, i32* @ESP_CMD_SELA, align 4
  %154 = or i32 %152, %153
  %155 = call i32 %146(%struct.esp* %147, i32 %150, i32 %151, i32 16, i32 0, i32 %154)
  ret void
}

declare dso_local i32 @esp_log_autosense(i8*, i32, i32, i32) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_write_tgt_sync(%struct.esp*, i32) #1

declare dso_local i32 @esp_write_tgt_config3(%struct.esp*, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
