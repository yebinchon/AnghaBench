; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_check_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @clariion_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_check_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %6 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %48 [
    i32 129, label %9
    i32 130, label %22
    i32 128, label %35
  ]

9:                                                ; preds = %2
  %10 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @SUCCESS, align 4
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %14, %9
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @SUCCESS, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %27, %22
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 41
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %2, %47, %34, %21
  %49 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %45, %32, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
