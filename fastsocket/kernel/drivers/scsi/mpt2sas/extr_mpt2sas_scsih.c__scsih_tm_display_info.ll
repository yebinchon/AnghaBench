; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_tm_display_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_tm_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32, i64 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_target* }
%struct.scsi_target = type { %struct.MPT2SAS_TARGET* }
%struct.MPT2SAS_TARGET = type { i32, i64, i32 }
%struct._sas_device = type { i64, i64, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"WarpDrive\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s handle(0x%04x), %s wwid(0x%016llx)\0A\00", align 1
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"volume handle(0x%04x), volume wwid(0x%016llx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"handle(0x%04x), sas_address(0x%016llx), phy(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"enclosure_logical_id(0x%016llx), slot(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*, %struct.scsi_cmnd*)* @_scsih_tm_display_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_tm_display_info(%struct.MPT2SAS_ADAPTER* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca %struct.MPT2SAS_TARGET*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.scsi_target*, %struct.scsi_target** %13, align 8
  store %struct.scsi_target* %14, %struct.scsi_target** %5, align 8
  %15 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %15, i32 0, i32 0
  %17 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %16, align 8
  store %struct.MPT2SAS_TARGET* %17, %struct.MPT2SAS_TARGET** %6, align 8
  store %struct._sas_device* null, %struct._sas_device** %7, align 8
  store i8* null, i8** %9, align 8
  %18 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %19 = icmp ne %struct.MPT2SAS_TARGET* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %23 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = call i32 @scsi_print_command(%struct.scsi_cmnd* %29)
  %31 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %32 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load i32, i32* @KERN_INFO, align 4
  %39 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %42 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %46 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %38, %struct.scsi_target* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %43, i8* %44, i64 %47)
  br label %105

49:                                               ; preds = %28
  %50 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %51 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %55 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %56 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER* %54, i64 %57)
  store %struct._sas_device* %58, %struct._sas_device** %7, align 8
  %59 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %60 = icmp ne %struct._sas_device* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %49
  %62 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %63 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %71 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %72 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %75 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %69, %struct.scsi_target* %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %73, i64 %76)
  br label %78

78:                                               ; preds = %68, %61
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %81 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %82 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %85 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %88 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %79, %struct.scsi_target* %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %83, i64 %86, i32 %89)
  %91 = load i32, i32* @KERN_INFO, align 4
  %92 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %93 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %94 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %97 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %91, %struct.scsi_target* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %95, i64 %98)
  br label %100

100:                                              ; preds = %78, %49
  %101 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %102 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %101, i32 0, i32 0
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %20, %100, %37
  ret void
}

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
