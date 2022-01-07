; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.ctlr_info = type { i32 }

@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i32)* @hpsa_change_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_change_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctlr_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %10 = call %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device* %9)
  store %struct.ctlr_info* %10, %struct.ctlr_info** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %35 = call i32 @scsi_get_tag_type(%struct.scsi_device* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %33, i32 %35, i32 %36)
  %38 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device*) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @scsi_get_tag_type(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
