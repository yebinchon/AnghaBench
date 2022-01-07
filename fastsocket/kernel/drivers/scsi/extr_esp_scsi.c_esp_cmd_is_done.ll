; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_cmd_is_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_cmd_is_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.esp*, i32, i32, i32)* }
%struct.esp_cmd_entry = type { i32, i32, i32*, i32, i32* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32*, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32 }

@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@esp_debug = common dso_local global i32 0, align 4
@ESP_DEBUG_AUTOSENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"esp%d: tgt[%d] lun[%d] AUTO SENSE[ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*, i32)* @esp_cmd_is_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_cmd_is_done(%struct.esp* %0, %struct.esp_cmd_entry* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca %struct.esp*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %5, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  store %struct.scsi_device* %15, %struct.scsi_device** %9, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.esp*, %struct.esp** %5, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.esp*, %struct.esp** %5, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %26 = call i32 @esp_unmap_dma(%struct.esp* %24, %struct.scsi_cmnd* %25)
  %27 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @esp_free_lun_tag(%struct.esp_cmd_entry* %27, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %36 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %41 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @complete(i32* %42)
  %44 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %45 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %4
  %47 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %48 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %118

53:                                               ; preds = %46
  %54 = load %struct.esp*, %struct.esp** %5, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.esp*, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32)** %57, align 8
  %59 = load %struct.esp*, %struct.esp** %5, align 8
  %60 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %61 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 %58(%struct.esp* %59, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %67 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* @DRIVER_SENSE, align 4
  %69 = shl i32 %68, 24
  %70 = load i32, i32* @DID_OK, align 4
  %71 = shl i32 %70, 16
  %72 = or i32 %69, %71
  %73 = load i32, i32* @COMMAND_COMPLETE, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %77 = shl i32 %76, 0
  %78 = or i32 %75, %77
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %84 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* @esp_debug, align 4
  %88 = load i32, i32* @ESP_DEBUG_AUTOSENSE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %53
  %92 = load %struct.esp*, %struct.esp** %5, align 8
  %93 = getelementptr inbounds %struct.esp, %struct.esp* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %112, %91
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 18
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %100

115:                                              ; preds = %100
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %53
  br label %118

118:                                              ; preds = %117, %46
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 1
  %121 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %120, align 8
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %123 = call i32 %121(%struct.scsi_cmnd* %122)
  %124 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %125 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %124, i32 0, i32 1
  %126 = call i32 @list_del(i32* %125)
  %127 = load %struct.esp*, %struct.esp** %5, align 8
  %128 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %129 = call i32 @esp_put_ent(%struct.esp* %127, %struct.esp_cmd_entry* %128)
  %130 = load %struct.esp*, %struct.esp** %5, align 8
  %131 = call i32 @esp_maybe_execute_command(%struct.esp* %130)
  ret void
}

declare dso_local i32 @esp_unmap_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_free_lun_tag(%struct.esp_cmd_entry*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @esp_put_ent(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_maybe_execute_command(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
