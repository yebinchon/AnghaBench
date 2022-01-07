; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_cur_dma_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_cur_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_cmd_entry = type { i32, i64, i64 }
%struct.scsi_cmnd = type { i64 }
%struct.esp_cmd_priv = type { i64, i32 }

@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.esp_cmd_entry*, %struct.scsi_cmnd*)* @esp_cur_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esp_cur_dma_addr(%struct.esp_cmd_entry* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.esp_cmd_priv*, align 8
  store %struct.esp_cmd_entry* %0, %struct.esp_cmd_entry** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %8 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd* %7)
  store %struct.esp_cmd_priv* %8, %struct.esp_cmd_priv** %6, align 8
  %9 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %10 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %17 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %20 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = add nsw i64 %18, %25
  store i64 %26, i64* %3, align 8
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %29 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @sg_dma_address(i32 %30)
  %32 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %33 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @sg_dma_len(i32 %34)
  %36 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %6, align 8
  %37 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = add nsw i64 %31, %39
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %27, %15
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_dma_address(i32) #1

declare dso_local i64 @sg_dma_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
