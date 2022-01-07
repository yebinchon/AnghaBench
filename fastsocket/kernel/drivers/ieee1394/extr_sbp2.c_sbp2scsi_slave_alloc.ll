; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.sbp2_lu = type { i32, %struct.scsi_device*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_INQUIRY_36 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @sbp2scsi_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2scsi_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.sbp2_lu*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 6
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.sbp2_lu*
  store %struct.sbp2_lu* %12, %struct.sbp2_lu** %4, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %22 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %17, %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %38 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %37, i32 0, i32 1
  store %struct.scsi_device* %36, %struct.scsi_device** %38, align 8
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 3
  store i32 1, i32* %40, align 8
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @blk_queue_update_dma_alignment(i32 %43, i32 3)
  %45 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %46 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SBP2_WORKAROUND_INQUIRY_36, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 4
  store i32 36, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %35
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @blk_queue_update_dma_alignment(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
