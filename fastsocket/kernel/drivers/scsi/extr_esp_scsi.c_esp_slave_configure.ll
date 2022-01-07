; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.esp = type { i32, %struct.esp_target_data* }
%struct.esp_target_data = type { i32 }

@ESP_FLAG_DISABLE_SYNC = common dso_local global i32 0, align 4
@ESP_DEFAULT_TAGS = common dso_local global i32 0, align 4
@ESP_MAX_TAG = common dso_local global i32 0, align 4
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@ESP_TGT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @esp_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_target_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call %struct.esp* @shost_priv(%struct.TYPE_2__* %9)
  store %struct.esp* %10, %struct.esp** %3, align 8
  %11 = load %struct.esp*, %struct.esp** %3, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 1
  %13 = load %struct.esp_target_data*, %struct.esp_target_data** %12, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %13, i64 %16
  store %struct.esp_target_data* %17, %struct.esp_target_data** %4, align 8
  %18 = load %struct.esp*, %struct.esp** %3, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ESP_FLAG_DISABLE_SYNC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %1
  store i32 0, i32* %5, align 4
  %30 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* @ESP_DEFAULT_TAGS, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ESP_MAX_TAG, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ESP_MAX_TAG, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %34
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %42
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %62 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %63 = call i32 @scsi_set_tag_type(%struct.scsi_device* %61, i32 %62)
  %64 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @scsi_activate_tcq(%struct.scsi_device* %64, i32 %65)
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i32, i32* @ESP_TGT_DISCONNECT, align 4
  %73 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %74 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @spi_initial_dv(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %84 = call i32 @spi_dv_device(%struct.scsi_device* %83)
  br label %85

85:                                               ; preds = %82, %71
  ret i32 0
}

declare dso_local %struct.esp* @shost_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @scsi_set_tag_type(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @spi_initial_dv(i32) #1

declare dso_local i32 @spi_dv_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
