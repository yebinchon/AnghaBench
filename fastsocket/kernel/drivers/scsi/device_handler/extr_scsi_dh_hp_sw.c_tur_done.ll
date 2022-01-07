; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_tur_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_tur_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: sending tur failed, no sense available\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_IMM_RETRY = common dso_local global i32 0, align 4
@SCSI_DH_DEV_OFFLINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: sending tur failed, sense %x/%x/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @tur_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tur_done(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %9 = call i32 @scsi_normalize_sense(i8* %7, i32 %8, %struct.scsi_sense_hdr* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_WARNING, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = load i32, i32* @HP_SW_NAME, align 4
  %16 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %13, %struct.scsi_device* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %17, i32* %6, align 4
  br label %46

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %34 [
    i32 128, label %21
    i32 129, label %23
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* @SCSI_DH_IMM_RETRY, align 4
  store i32 %22, i32* %6, align 4
  br label %45

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SCSI_DH_DEV_OFFLINED, align 4
  store i32 %32, i32* %6, align 4
  br label %45

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %18, %33
  %35 = load i32, i32* @KERN_WARNING, align 4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = load i32, i32* @HP_SW_NAME, align 4
  %38 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %35, %struct.scsi_device* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %34, %31, %21
  br label %46

46:                                               ; preds = %45, %12
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
