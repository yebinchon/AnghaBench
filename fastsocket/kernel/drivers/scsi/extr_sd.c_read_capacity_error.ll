; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_read_capacity_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_read_capacity_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64 }
%struct.scsi_device = type { i32, i64 }
%struct.scsi_sense_hdr = type { i64 }

@DRIVER_SENSE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Sense not available.\0A\00", align 1
@NOT_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, %struct.scsi_device*, %struct.scsi_sense_hdr*, i32, i32)* @read_capacity_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_capacity_error(%struct.scsi_disk* %0, %struct.scsi_device* %1, %struct.scsi_sense_hdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_sense_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %6, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %7, align 8
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @sd_print_result(%struct.scsi_disk* %11, i32 %12)
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @driver_byte(i32 %14)
  %16 = load i32, i32* @DRIVER_SENSE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %21 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %22 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %20, %struct.scsi_sense_hdr* %21)
  br label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @KERN_NOTICE, align 4
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %26 = call i32 @sd_printk(i32 %24, %struct.scsi_disk* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NOT_READY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %35, %32, %27
  %45 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local i32 @sd_print_result(%struct.scsi_disk*, i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
