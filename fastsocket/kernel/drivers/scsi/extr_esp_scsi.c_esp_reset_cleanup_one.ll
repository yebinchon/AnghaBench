; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_reset_cleanup_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_reset_cleanup_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.esp*, i32, i32, i32)* }
%struct.esp_cmd_entry = type { i32, i32, i32*, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DID_RESET = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*)* @esp_reset_cleanup_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_reset_cleanup_one(%struct.esp* %0, %struct.esp_cmd_entry* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %4, align 8
  %6 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %7 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %6, i32 0, i32 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.esp*, %struct.esp** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call i32 @esp_unmap_dma(%struct.esp* %9, %struct.scsi_cmnd* %10)
  %12 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @esp_free_lun_tag(%struct.esp_cmd_entry* %12, i32 %17)
  %19 = load i32, i32* @DID_RESET, align 4
  %20 = shl i32 %19, 16
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %24 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load %struct.esp*, %struct.esp** %3, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.esp*, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32)** %33, align 8
  %35 = load %struct.esp*, %struct.esp** %3, align 8
  %36 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %37 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 %34(%struct.esp* %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %43 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %29, %2
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %49 = call i32 %47(%struct.scsi_cmnd* %48)
  %50 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %51 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %50, i32 0, i32 1
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.esp*, %struct.esp** %3, align 8
  %54 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %55 = call i32 @esp_put_ent(%struct.esp* %53, %struct.esp_cmd_entry* %54)
  ret void
}

declare dso_local i32 @esp_unmap_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_free_lun_tag(%struct.esp_cmd_entry*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @esp_put_ent(%struct.esp*, %struct.esp_cmd_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
