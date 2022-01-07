; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_finish_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_finish_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i64, i32, i32, %struct.esp_target_data*, %struct.esp_cmd_entry*, i32, %struct.TYPE_2__*, i64, i32*, i32, i32 }
%struct.esp_target_data = type { i32 }
%struct.esp_cmd_entry = type { i32, i32, i32*, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.esp*, i32, i32, i32)*, {}*, i64 (%struct.esp*)* }

@ESP_SELECT_NONE = common dso_local global i32 0, align 4
@ESP_SSTEP = common dso_local global i32 0, align 4
@ESP_STEP_VBITS = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@ESP_INTR_RSEL = common dso_local global i32 0, align 4
@ESP_INTR_FDONE = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_WIDE = common dso_local global i32 0, align 4
@ESP_FLAG_DOING_SLOWCMD = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ESP_INTR_DC = common dso_local global i32 0, align 4
@ESP_TGT_CHECK_NEGO = common dso_local global i32 0, align 4
@ESP_CMD_ESEL = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@ESP_INTR_BSERV = common dso_local global i32 0, align 4
@ESP236 = common dso_local global i64 0, align 8
@ESP_FFLAGS = common dso_local global i32 0, align 4
@ESP_FF_FBYTES = common dso_local global i32 0, align 4
@ESP_CMD_NULL = common dso_local global i32 0, align 4
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@ESP_DIP = common dso_local global i32 0, align 4
@ESP_EVENT_CHECK_PHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ESP: Unexpected selection completion ireg[%x].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_finish_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_finish_select(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.esp_target_data*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  %10 = load %struct.esp*, %struct.esp** %3, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @ESP_SELECT_NONE, align 4
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ESP_SSTEP, align 4
  %17 = call i32 @esp_read8(i32 %16)
  %18 = load i32, i32* @ESP_STEP_VBITS, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.esp*, %struct.esp** %3, align 8
  %21 = getelementptr inbounds %struct.esp, %struct.esp* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 6
  %24 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %23, align 8
  store %struct.esp_cmd_entry* %24, %struct.esp_cmd_entry** %4, align 8
  %25 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %26 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %25, i32 0, i32 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %5, align 8
  %28 = load %struct.esp*, %struct.esp** %3, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64 (%struct.esp*)*, i64 (%struct.esp*)** %31, align 8
  %33 = load %struct.esp*, %struct.esp** %3, align 8
  %34 = call i64 %32(%struct.esp* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.esp*, %struct.esp** %3, align 8
  %38 = call i32 @esp_schedule_reset(%struct.esp* %37)
  %39 = load %struct.esp*, %struct.esp** %3, align 8
  %40 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %42 = load i32, i32* @DID_ERROR, align 4
  %43 = shl i32 %42, 16
  %44 = call i32 @esp_cmd_is_done(%struct.esp* %39, %struct.esp_cmd_entry* %40, %struct.scsi_cmnd* %41, i32 %43)
  store i32 0, i32* %2, align 4
  br label %211

45:                                               ; preds = %1
  %46 = load %struct.esp*, %struct.esp** %3, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = bitcast {}** %49 to i32 (%struct.esp*)**
  %51 = load i32 (%struct.esp*)*, i32 (%struct.esp*)** %50, align 8
  %52 = load %struct.esp*, %struct.esp** %3, align 8
  %53 = call i32 %51(%struct.esp* %52)
  %54 = load %struct.esp*, %struct.esp** %3, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ESP_INTR_RSEL, align 4
  %58 = load i32, i32* @ESP_INTR_FDONE, align 4
  %59 = or i32 %57, %58
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %129

61:                                               ; preds = %45
  %62 = load %struct.esp*, %struct.esp** %3, align 8
  %63 = getelementptr inbounds %struct.esp, %struct.esp* %62, i32 0, i32 5
  %64 = load %struct.esp_target_data*, %struct.esp_target_data** %63, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = load %struct.scsi_device*, %struct.scsi_device** %66, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %64, i64 %69
  store %struct.esp_target_data* %70, %struct.esp_target_data** %7, align 8
  %71 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %72 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %106, label %77

77:                                               ; preds = %61
  %78 = load %struct.esp*, %struct.esp** %3, align 8
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %80 = call i32 @esp_unmap_dma(%struct.esp* %78, %struct.scsi_cmnd* %79)
  %81 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 0
  %84 = load %struct.scsi_device*, %struct.scsi_device** %83, align 8
  %85 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @esp_free_lun_tag(%struct.esp_cmd_entry* %81, i32 %86)
  %88 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %89 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.esp_target_data*, %struct.esp_target_data** %7, align 8
  %93 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @ESP_FLAG_DOING_SLOWCMD, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.esp*, %struct.esp** %3, align 8
  %99 = getelementptr inbounds %struct.esp, %struct.esp* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.esp*, %struct.esp** %3, align 8
  %103 = getelementptr inbounds %struct.esp, %struct.esp* %102, i32 0, i32 10
  store i32* null, i32** %103, align 8
  %104 = load %struct.esp*, %struct.esp** %3, align 8
  %105 = getelementptr inbounds %struct.esp, %struct.esp* %104, i32 0, i32 9
  store i64 0, i64* %105, align 8
  br label %121

106:                                              ; preds = %61
  %107 = load %struct.esp*, %struct.esp** %3, align 8
  %108 = getelementptr inbounds %struct.esp, %struct.esp* %107, i32 0, i32 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.esp*, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32)** %110, align 8
  %112 = load %struct.esp*, %struct.esp** %3, align 8
  %113 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %114 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %117 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %118 = call i32 %111(%struct.esp* %112, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %120 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %119, i32 0, i32 2
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %106, %77
  %122 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %123 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %122, i32 0, i32 1
  %124 = load %struct.esp*, %struct.esp** %3, align 8
  %125 = getelementptr inbounds %struct.esp, %struct.esp* %124, i32 0, i32 7
  %126 = call i32 @list_move(i32* %123, i32* %125)
  %127 = load %struct.esp*, %struct.esp** %3, align 8
  %128 = getelementptr inbounds %struct.esp, %struct.esp* %127, i32 0, i32 6
  store %struct.esp_cmd_entry* null, %struct.esp_cmd_entry** %128, align 8
  store i32 0, i32* %2, align 4
  br label %211

129:                                              ; preds = %45
  %130 = load %struct.esp*, %struct.esp** %3, align 8
  %131 = getelementptr inbounds %struct.esp, %struct.esp* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ESP_INTR_DC, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  %138 = load %struct.scsi_device*, %struct.scsi_device** %137, align 8
  store %struct.scsi_device* %138, %struct.scsi_device** %8, align 8
  %139 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %140 = load %struct.esp*, %struct.esp** %3, align 8
  %141 = getelementptr inbounds %struct.esp, %struct.esp* %140, i32 0, i32 5
  %142 = load %struct.esp_target_data*, %struct.esp_target_data** %141, align 8
  %143 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %144 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %142, i64 %145
  %147 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %139
  store i32 %149, i32* %147, align 4
  %150 = load %struct.esp*, %struct.esp** %3, align 8
  %151 = load i32, i32* @ESP_CMD_ESEL, align 4
  %152 = call i32 @scsi_esp_cmd(%struct.esp* %150, i32 %151)
  %153 = load %struct.esp*, %struct.esp** %3, align 8
  %154 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %156 = load i32, i32* @DID_BAD_TARGET, align 4
  %157 = shl i32 %156, 16
  %158 = call i32 @esp_cmd_is_done(%struct.esp* %153, %struct.esp_cmd_entry* %154, %struct.scsi_cmnd* %155, i32 %157)
  store i32 1, i32* %2, align 4
  br label %211

159:                                              ; preds = %129
  %160 = load %struct.esp*, %struct.esp** %3, align 8
  %161 = getelementptr inbounds %struct.esp, %struct.esp* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ESP_INTR_FDONE, align 4
  %164 = load i32, i32* @ESP_INTR_BSERV, align 4
  %165 = or i32 %163, %164
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %204

167:                                              ; preds = %159
  %168 = load %struct.esp*, %struct.esp** %3, align 8
  %169 = getelementptr inbounds %struct.esp, %struct.esp* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ESP236, align 8
  %172 = icmp sle i64 %170, %171
  br i1 %172, label %173, label %200

173:                                              ; preds = %167
  %174 = load i32, i32* @ESP_FFLAGS, align 4
  %175 = call i32 @esp_read8(i32 %174)
  %176 = load i32, i32* @ESP_FF_FBYTES, align 4
  %177 = and i32 %175, %176
  store i32 %177, i32* %9, align 4
  %178 = load %struct.esp*, %struct.esp** %3, align 8
  %179 = load i32, i32* @ESP_CMD_NULL, align 4
  %180 = call i32 @scsi_esp_cmd(%struct.esp* %178, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %173
  %184 = load %struct.esp*, %struct.esp** %3, align 8
  %185 = getelementptr inbounds %struct.esp, %struct.esp* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.esp*, %struct.esp** %3, align 8
  %190 = getelementptr inbounds %struct.esp, %struct.esp* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ESP_STAT_PMASK, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @ESP_DIP, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %188, %183
  %197 = load %struct.esp*, %struct.esp** %3, align 8
  %198 = call i32 @esp_flush_fifo(%struct.esp* %197)
  br label %199

199:                                              ; preds = %196, %188, %173
  br label %200

200:                                              ; preds = %199, %167
  %201 = load %struct.esp*, %struct.esp** %3, align 8
  %202 = load i32, i32* @ESP_EVENT_CHECK_PHASE, align 4
  %203 = call i32 @esp_event(%struct.esp* %201, i32 %202)
  store i32 0, i32* %2, align 4
  br label %211

204:                                              ; preds = %159
  %205 = load %struct.esp*, %struct.esp** %3, align 8
  %206 = getelementptr inbounds %struct.esp, %struct.esp* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %207)
  %209 = load %struct.esp*, %struct.esp** %3, align 8
  %210 = call i32 @esp_schedule_reset(%struct.esp* %209)
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %204, %200, %135, %121, %36
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_schedule_reset(%struct.esp*) #1

declare dso_local i32 @esp_cmd_is_done(%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @esp_unmap_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_free_lun_tag(%struct.esp_cmd_entry*, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_flush_fifo(%struct.esp*) #1

declare dso_local i32 @esp_event(%struct.esp*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
