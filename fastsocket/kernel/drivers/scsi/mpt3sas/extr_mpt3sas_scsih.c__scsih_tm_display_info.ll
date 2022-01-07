; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_tm_display_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_tm_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_target* }
%struct.scsi_target = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32, i64, i32 }
%struct._sas_device = type { i64, i64, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s handle(0x%04x), %s wwid(0x%016llx)\0A\00", align 1
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"volume handle(0x%04x), volume wwid(0x%016llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"handle(0x%04x), sas_address(0x%016llx), phy(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"enclosure_logical_id(0x%016llx), slot(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*)* @_scsih_tm_display_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca %struct.MPT3SAS_TARGET*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.scsi_target*, %struct.scsi_target** %13, align 8
  store %struct.scsi_target* %14, %struct.scsi_target** %5, align 8
  %15 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %15, i32 0, i32 0
  %17 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %16, align 8
  store %struct.MPT3SAS_TARGET* %17, %struct.MPT3SAS_TARGET** %6, align 8
  store %struct._sas_device* null, %struct._sas_device** %7, align 8
  store i8* null, i8** %9, align 8
  %18 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %19 = icmp ne %struct.MPT3SAS_TARGET* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %98

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = call i32 @scsi_print_command(%struct.scsi_cmnd* %22)
  %24 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %25 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %35 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %31, %struct.scsi_target* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %36, i8* %37, i64 %40)
  br label %98

42:                                               ; preds = %21
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %48 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %49 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %47, i64 %50)
  store %struct._sas_device* %51, %struct._sas_device** %7, align 8
  %52 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %53 = icmp ne %struct._sas_device* %52, null
  br i1 %53, label %54, label %93

54:                                               ; preds = %42
  %55 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %56 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* @KERN_INFO, align 4
  %63 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %64 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %65 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %68 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %62, %struct.scsi_target* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %66, i64 %69)
  br label %71

71:                                               ; preds = %61, %54
  %72 = load i32, i32* @KERN_INFO, align 4
  %73 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %74 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %75 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %78 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %81 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %72, %struct.scsi_target* %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %79, i32 %82)
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %86 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %87 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %90 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %84, %struct.scsi_target* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %88, i64 %91)
  br label %93

93:                                               ; preds = %71, %42
  %94 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %95 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %94, i32 0, i32 0
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %20, %93, %30
  ret void
}

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
