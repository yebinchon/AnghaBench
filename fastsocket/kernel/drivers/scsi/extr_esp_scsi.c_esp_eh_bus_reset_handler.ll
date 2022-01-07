; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_eh_bus_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_eh_bus_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.esp = type { %struct.TYPE_3__*, %struct.completion*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.completion = type { i32 }

@ESP_FLAG_RESETTING = common dso_local global i32 0, align 4
@ESP_CMD_RS = common dso_local global i32 0, align 4
@esp_bus_reset_settle = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @esp_eh_bus_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_eh_bus_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.esp*, align 8
  %5 = alloca %struct.completion, align 4
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.esp* @shost_priv(i32 %11)
  store %struct.esp* %12, %struct.esp** %4, align 8
  %13 = call i32 @init_completion(%struct.completion* %5)
  %14 = load %struct.esp*, %struct.esp** %4, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.esp*, %struct.esp** %4, align 8
  %22 = getelementptr inbounds %struct.esp, %struct.esp* %21, i32 0, i32 1
  store %struct.completion* %5, %struct.completion** %22, align 8
  %23 = load i32, i32* @ESP_FLAG_RESETTING, align 4
  %24 = load %struct.esp*, %struct.esp** %4, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.esp*, %struct.esp** %4, align 8
  %29 = load i32, i32* @ESP_CMD_RS, align 4
  %30 = call i32 @scsi_esp_cmd(%struct.esp* %28, i32 %29)
  %31 = load %struct.esp*, %struct.esp** %4, align 8
  %32 = getelementptr inbounds %struct.esp, %struct.esp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  %38 = load i32, i32* @esp_bus_reset_settle, align 4
  %39 = call i32 @ssleep(i32 %38)
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 5, %40
  %42 = call i32 @wait_for_completion_timeout(%struct.completion* %5, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %1
  %45 = load %struct.esp*, %struct.esp** %4, align 8
  %46 = getelementptr inbounds %struct.esp, %struct.esp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_lock_irqsave(i32 %49, i64 %50)
  %52 = load %struct.esp*, %struct.esp** %4, align 8
  %53 = getelementptr inbounds %struct.esp, %struct.esp* %52, i32 0, i32 1
  store %struct.completion* null, %struct.completion** %53, align 8
  %54 = load %struct.esp*, %struct.esp** %4, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32 %58, i64 %59)
  %61 = load i32, i32* @FAILED, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %1
  %63 = load i32, i32* @SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %44
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.esp* @shost_priv(i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
