; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_parse_sp_info_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_parse_sp_info_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.clariion_dh_data = type { i32*, i32, i32, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"%s: Detected in-progress ucode upgrade NDU operation while finding current active SP.\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@SCSI_DH_DEV_TEMP_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: invalid VPD page 0xC0 format\0A\00", align 1
@SCSI_DH_NOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: ALUA failover mode detected\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Invalid failover mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.clariion_dh_data*)* @parse_sp_info_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sp_info_reply(%struct.scsi_device* %0, %struct.clariion_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.clariion_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.clariion_dh_data* %1, %struct.clariion_dh_data** %4, align 8
  %6 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %8 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 48
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @KERN_NOTICE, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = load i32, i32* @CLARIION_NAME, align 4
  %17 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %14, %struct.scsi_device* %15, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %18, i32* %5, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %21 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @KERN_NOTICE, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = load i32, i32* @CLARIION_NAME, align 4
  %30 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %27, %struct.scsi_device* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @SCSI_DH_NOSYS, align 4
  store i32 %31, i32* %5, align 4
  br label %86

32:                                               ; preds = %19
  %33 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %34 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 28
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  switch i32 %38, label %45 [
    i32 6, label %39
    i32 4, label %44
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* @KERN_NOTICE, align 4
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = load i32, i32* @CLARIION_NAME, align 4
  %43 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %40, %struct.scsi_device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %57

44:                                               ; preds = %32
  br label %57

45:                                               ; preds = %32
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %48 = load i32, i32* @CLARIION_NAME, align 4
  %49 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %50 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 28
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %46, %struct.scsi_device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %54)
  %56 = load i32, i32* @SCSI_DH_NOSYS, align 4
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %44, %39
  %58 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %59 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %64 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %66 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %71 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %73 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %78 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %80 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %85 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %57, %45, %26, %13
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
