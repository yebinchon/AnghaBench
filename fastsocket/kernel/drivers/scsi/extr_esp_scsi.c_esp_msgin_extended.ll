; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_msgin_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_msgin_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64*, i32, i32*, %struct.esp_target_data*, %struct.esp_cmd_entry* }
%struct.esp_target_data = type { i32 }
%struct.esp_cmd_entry = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXTENDED_SDTR = common dso_local global i64 0, align 8
@EXTENDED_WDTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ESP: Unexpected extended msg type %x\0A\00", align 1
@ABORT_TASK_SET = common dso_local global i32 0, align 4
@ESP_CMD_SATN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_msgin_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_msgin_extended(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca %struct.esp_cmd_entry*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.esp_target_data*, align 8
  %6 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %7 = load %struct.esp*, %struct.esp** %2, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 4
  %9 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %8, align 8
  store %struct.esp_cmd_entry* %9, %struct.esp_cmd_entry** %3, align 8
  %10 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %3, align 8
  %11 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %10, i32 0, i32 0
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.esp*, %struct.esp** %2, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 3
  %20 = load %struct.esp_target_data*, %struct.esp_target_data** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %20, i64 %22
  store %struct.esp_target_data* %23, %struct.esp_target_data** %5, align 8
  %24 = load %struct.esp*, %struct.esp** %2, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EXTENDED_SDTR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.esp*, %struct.esp** %2, align 8
  %33 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %34 = call i32 @esp_msgin_sdtr(%struct.esp* %32, %struct.esp_target_data* %33)
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.esp*, %struct.esp** %2, align 8
  %37 = getelementptr inbounds %struct.esp, %struct.esp* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXTENDED_WDTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.esp*, %struct.esp** %2, align 8
  %45 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %46 = call i32 @esp_msgin_wdtr(%struct.esp* %44, %struct.esp_target_data* %45)
  br label %64

47:                                               ; preds = %35
  %48 = load %struct.esp*, %struct.esp** %2, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @ABORT_TASK_SET, align 4
  %55 = load %struct.esp*, %struct.esp** %2, align 8
  %56 = getelementptr inbounds %struct.esp, %struct.esp* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.esp*, %struct.esp** %2, align 8
  %60 = getelementptr inbounds %struct.esp, %struct.esp* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.esp*, %struct.esp** %2, align 8
  %62 = load i32, i32* @ESP_CMD_SATN, align 4
  %63 = call i32 @scsi_esp_cmd(%struct.esp* %61, i32 %62)
  br label %64

64:                                               ; preds = %47, %43, %31
  ret void
}

declare dso_local i32 @esp_msgin_sdtr(%struct.esp*, %struct.esp_target_data*) #1

declare dso_local i32 @esp_msgin_wdtr(%struct.esp*, %struct.esp_target_data*) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
